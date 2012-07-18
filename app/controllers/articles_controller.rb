
class ArticlesController < ApplicationController
	helper_method :sort_column, :sort_direction
  def index
		@articles = Article.order(sort_column + " " + sort_direction).page(params[:page]).per(5)
  end
	
	def show
		@article = Article.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @article }
    end
	end

private

  def sort_column
    Article.column_names.include?(params[:sort]) ? params[:sort] : "published"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "desc"
  end
end
