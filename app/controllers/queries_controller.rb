class QueriesController < ApplicationController
  def index
    @queries = Query.all
    render json:@queries
  end

  def show
    @query = Query.find(params[:id])
    render json: QueryParam.where(query_id: @query[:id])
  end

  def create
    @query = Query.create(parameters)
    params[:params].each do |p|
      param = {query_id: @query[:id], name: p[:name], value_type: p[:value_type], default_value: p[:default_value]}
      params = QueryParam.create(param)
      puts params.errors.messages
    end
    render json: @query[:id]
  end

  def update
    @query = Query.find(params[:id])
    @query.update(parameters)
    params[:params].each do |p|
      param = {query_id: @query[:id], name: p[:name], value_type: p[:value_type], default_value: p[:default_value]}
      params = QueryParam.create(query_parms(p))
      puts params.errors.messages
    end
    render json: @query
  end

  def destroy
    @query = Query.find(params[:id])
    @query.destroy
    render json: {status: "ok"}
  end

  private
  def parameters
    params.require(:query).permit(:id, :name, :sql, :description, :params)
  end

  private
  def query_parms(p)
    p.permit(:id, :name, :value_type, :default_value, :query, :query_id)
  end

end
