class ActionService
  attr_reader :keywords

  def initialize(keywords)
    @keywords = keywords
  end

  def like
    keywords.each{|keyword| keyword.increment_rating! }
    recalculate_articles!
  end

  def dislike
    keywords.each{|keyword| keyword.decrement_rating! }
    recalculate_articles!
  end

  private

  def recalculate_articles!
    articles = Article.with_keywords(keyword_ids)
    service = ArticlesScoreRecalculationService.new(articles)
    service.recalculate_all
  end

  def keyword_ids
    keywords.pluck(:id)
  end
end