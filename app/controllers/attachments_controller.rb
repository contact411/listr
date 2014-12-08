class AttachmentsController < ApplicationController
  def index
    @attachments = Attachment.all
  end

  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.create(attachment_params)
     if @attachment.save
      redirect_to @attachment
    else
      render :new
    end
  end

  def show
    @attachment = Attachment.find params[:id]
  end

  def edit
    @attachment = Attachment.find params[:id]
  end

  def update
    @attachment = Attachment.find params[:id]
    if @attachment.update attachment_params
      redirect_to @attachment
    else
      render :edit
    end
  end

  def destroy
    @attachment = Attachment.find params[:id]
    @attachment.destroy

    redirect_to attachments_path
  end

private

def attachment_params
  params.require(:attachment).permit(:name, :image, )
end
end
