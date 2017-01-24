class SetArticleKeywords
  attr_reader :article, :keyword
  def initialize(args)
    @article = args[:article]
    @keyword = args[:keyword]
  end

  def create_keyword_associations!
    Keyword.find_each do |keyword|
      article.keywords << keyword if _contain_word?(article, keyword.title)
    end
  end

  def create_article_associations!
    Article.find_each do |article|
      keyword.articles << article if _contain_word?(article, keyword.title)
    end
  end
  private

  def _contain_word?(article,word)
    article.content.include?(word) || article.title.include?(word)
  end
end