class ArticleObserver < ActiveRecord::Observer

  def after_save(article)
    article.associate_with_keywords if need_to_associate?(article)
  end

  def before_destroy(article)
    article.keywords.clear
  end

  private

  def need_to_associate?(article)
    article.title_changed? || article.content_changed?
  end
end