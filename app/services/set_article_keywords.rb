class SetArticleKeywords
  attr_reader :article, :keyword
  def initialize(args)
    @article = args[:article]
    @keyword = args[:keyword]
  end

  def create_keyword_associations!
    Keyword.find_each do |keyword|
      @keyword = keyword
      if _contain_word?
        article_keyword = ArticleKeyword.find_or_initialize_by(article: article, keyword: keyword)
        article_keyword.update(entries_count: entries_count)
      end

    end
  end

  def create_article_associations!
    Article.find_each do |article|
      @article = article
      if _contain_word?
        article_keyword = ArticleKeyword.find_or_initialize_by(article: article, keyword: keyword)
        article_keyword.update(entries_count: entries_count)
      end
    end
  end
  private

  def _contain_word?
    article.content.include?(word) || article.title.include?(word)
  end

  def entries_count
    entries_to_title + entries_to_content
  end

  def entries_to_title
    article.title.scan(word).count
  end

  def entries_to_content
    article.content.scan(word).count
  end


  def word
    @word ||= keyword.title
  end
end