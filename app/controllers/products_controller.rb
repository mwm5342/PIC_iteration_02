
class ProductsController < ApplicationController
	helper_method :sort_column, :sort_direction
  # GET /products
  # GET /products.json
  
  def index
    @products = Product.includes(:manufacturer, :category).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
end
