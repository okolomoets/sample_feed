class Article < ApplicationRecord
  has_many :article_keywords
  has_many :keywords, through: :article_keywords

  scope :with_keywords, ->(keyword_ids) { joins(:keywords).where(keywords: {id: keyword_ids}) }
  scope :sort_by_score, ->{order(score: :desc)}

  def associate_with_keywords
    service = SetArticleKeywords.new({article: self})
    service.create_keyword_associations!
  end

  def in_black_list?
    self.keywords.pluck(:word_type).include?("black_list")
  end

  def in_white_list?
    self.keywords.pluck(:word_type).include?("white_list")
  end


  def entries_count_of_keyword(keyword)
    self.article_keywords.where(keyword: keyword).first.entries_count
  end

end
