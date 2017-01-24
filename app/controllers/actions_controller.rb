class ActionsController < ApplicationController
  before_action :_set_article, :_set_keywords

  def like
    service = ActionService.new(@keywords)
    service.like
    render json: {success: true}
  end

  def dislike
    service = ActionService.new(@keywords)
    service.dislike
    render json: {success: true}
  end

  private

  def _set_article
    @article = Article.where(id: params[:id]).first
  end

  def _set_keywords
    @keywords = @article.keywords
  end
end