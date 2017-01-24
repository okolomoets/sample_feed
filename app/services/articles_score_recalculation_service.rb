class ArticlesScoreRecalculationService
  attr_reader :articles
  def initialize(articles)
    @articles = articles
  end

  def recalculate_all
    articles.each do |article|
      recalculate!(article)
    end
  end

  private

  def recalculate!(article)
    score = 0
    article.keywords.each do |keyword|
      score += keyword.score*entries_count(article, keyword)
    end
    article.update(score: score)
  end


  def entries_count(article, keyword)
    article.article_keywords.where(keyword: keyword).first.entries_count
  end
end
