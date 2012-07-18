
class CategoriesController < ApplicationController

  def index
    @categories = Category.order(:name).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @category = Category.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end
end
