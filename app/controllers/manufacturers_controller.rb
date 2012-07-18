
class ManufacturersController < ApplicationController
  
  def index
    @manufacturers = Manufacturer.order(:name).page(params[:page]).per(10)

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end
  # GET /products/1
  # GET /products/1.json
  def show
    @manufacturer = Manufacturer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @manufacturer }
    end
  end
end
