class Keyword < ApplicationRecord
  enum word_type: [ :white_list, :black_list ]

  has_and_belongs_to_many :articles

  def associate_with_keywords
    service = SetArticleKeywords.new({keyword: self})
    service.create_article_associations!
  end
end
