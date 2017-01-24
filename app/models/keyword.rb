class Keyword < ApplicationRecord
  enum word_type: [ :white_list, :black_list ]

  has_many :article_keywords
  has_many :articles, through: :article_keywords

  def associate_with_keywords
    service = SetArticleKeywords.new({keyword: self})
    service.create_article_associations!
  end

  def increment_rating!
    self.update(score: self.score + 1 )
  end

  def decrement_rating!
    self.update(score: self.score - 1 )
  end
end
