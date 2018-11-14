class FormsController < ApplicationController
  def index
    @forms = Form.all
    render json: @forms
  end

  def show
    @form = Form.find(params[:id])
    render json: @form
  end

  def create
    @form = Form.new(parameters)
    @form.query = Query.find(params[:query])
    @form.template = FormTemplate.find(params[:template])
    @form.save
    #puts(@form.errors.blank?)
    #puts @form.template_id
    if (@form.errors.count > 0)
      #puts(@form.errors.messages)
    end
    render json: @form[:id]
  end

  def update
    @form = Form.find(params[:id])
    @form.query_id = params[:query]
    @form.template_id = params[:template]
    @form.update(parameters)
    render json: @form
  end

  def destroy
    @form = Form.find(params[:id])
    @form.destroy
    render json: {status: "ok"}
  end

  private
  def parameters
    params.require(:form).permit(:id, :nome, :descricao, :query, :template)
  end
end
