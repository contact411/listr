class AttachmentsController < ApplicationController
  def new
    @attachment = Attachment.new
  end

  def create
    @attachment = Attachment.create(attachment_params)
    redirect_to @attachment
  end

  def show
    @attachment = Attachment.find params[:id]
  end

private

def attachment_params
  params.require(:attachment).permit(:name, :image)
end
end
