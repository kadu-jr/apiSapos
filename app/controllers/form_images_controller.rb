class FormImagesController < ApplicationController
  def index
    @images = FormImage.all.select(:id, :name, :text, :image)
    render json: @images
  end

  def show
    render json: FormImage.find(params[:id])
  end


  def create
    @image = FormImage.create(parameters)
    @image[:imagebase] = "Call show to view it"
    render json: @image.id
  end

  def update
    @image = FormImage.find(params[:id])
    @image.update(parameters)
    puts @image.errors.messages
    @image[:imagebase] = "Call show to view"
    render json: @image
  end

  def destroy
    @image = FormImage.find(params[:id])
    @image.destroy
    render json: {status: "ok"}
  end

  def logo
    record = FormImage.find params[:form_image_id]
    render json: record[:imagebase]
  end

  private
  def parameters
    params.require(:form_image).permit(:id, :name, :text, :image, :imagebase)
  end
end
