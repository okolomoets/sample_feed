class Article < ApplicationRecord
  has_and_belongs_to_many :keywords

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
end
