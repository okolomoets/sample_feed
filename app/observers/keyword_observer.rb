class KeywordObserver < ActiveRecord::Observer

  def after_save(keyword)
    keyword.associate_with_keywords if keyword.title_changed?
  end

  def before_destroy(keyword)
    keyword.articles.clear
  end
end