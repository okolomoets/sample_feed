class ArticlesController < ApplicationController
  before_action :_set_article, only: [:show]

  def index
    @articles = Article.includes(:keywords).sort_by_score
    respond_to do |format|
      format.html { }
      format.js { render layout: false }
    end
  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new
    end
  end


  private

  def _set_article
    @article = Article.where(id: params[:id]).first
  end

  def article_params
    params.require(:article).permit(:title, :author, :content)
  end
end