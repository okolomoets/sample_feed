class Keyword < ApplicationRecord
  enum words_type: [ :white_list, :black_list ]

  has_and_belongs_to_many :articles
end
