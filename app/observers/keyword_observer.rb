class KeywordObserver < ActiveRecord::Observer

  def after_save(keyword)
    puts "Title changed: #{keyword.title_changed?}"
    keyword.associate_with_keywords if keyword.title_changed?
  end

  def before_destroy(keyword)
    keyword.articles.clear
    articles = Article.with_keywords([keyword.id])
    service = ArticlesScoreRecalculationService.new(articles)
    service.recalculate_all
  end
end