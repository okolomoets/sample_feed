class Keyword < ApplicationRecord
  enum word_type: [ :white_list, :black_list ]

  has_and_belongs_to_many :articles
end
