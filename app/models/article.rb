class Article < ApplicationRecord
  has_and_belongs_to_many :keywords

  def associate_with_keywords
    service = SetArticleKeywords.new({article: self})
    service.create_keyword_associations!
  end

  def in_black_list?
    self.keywords.where(word_type: :black_list).any?
  end

  def in_white_list?
    self.keywords.where(word_type: :white_list).any?
  end
end
