class FormTemplatesController < ApplicationController
  def index
    @templates = FormTemplate.all
    render json: @templates
  end

  def show
    @template = FormTemplate.find(params[:id])
    render json: @template.form_image
  end

  def create
    @template = FormTemplate.create(parameters)
    @template.form_image_ids = params[:form_image]
    @template.save
    render json: @template.id
  end

  def update
    @template = FormTemplate.find(params[:id])
    @template.form_image_ids = params[:form_image]
    @template.update(parameters)
    render json: @template
  end

  def destroy
    @template = FormTemplate.find(params[:id])
    @template.destroy
    render json: {status: "ok"}
  end

  # Delete the latest item
  def delete
    item = FormTemplate.last
    id = item[:id]
    item.destroy
    render json: {id: id}
  end

  private
  def parameters
    params.require(:form_template).permit(:id, :name, :description, :code, :form_image)
  end
end
