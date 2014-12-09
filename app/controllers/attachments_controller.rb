class AttachmentsController < ApplicationController
  def index
    @listing = Listing.find params[:listing_id]
    @attachments = Attachment.all
  end

  def new
    @listing = Listing.find params[:listing_id]
    @attachment = Attachment.new

  end

  def create
    @listing = Listing.find params[:listing_id]
    @attachment = @listing.attachments.new(attachment_params)
     if @attachment.save
      redirect_to @listing
    else
      render :new
    end
  end

  def show
    @attachment = @listing.attachments.find params[:id]
  end

  def edit
    @listing = Listing.find params[:listing_id]
    @attachment = @listing.attachments.find params[:id]
  end

  def update
    @listing = Listing.find params[:listing_id]
    @attachment = @listing.attachments.find params[:id]
    if @attachment.update attachment_params
      redirect_to @attachment
    else
      render :edit
    end
  end

  def destroy
    @listing = Listing.find params[:listing_id]
    @attachment = @listing.attachments.find params[:id]
    @attachment.destroy

    redirect_to attachments_path
  end

private

def attachment_params
  params.require(:attachment).permit(:name, :image)
end
end
