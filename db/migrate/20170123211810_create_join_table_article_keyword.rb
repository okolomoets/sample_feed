class CreateJoinTableArticleKeyword < ActiveRecord::Migration[5.0]
  def change
    create_join_table :articles, :keywords do |t|
      t.index [:article_id, :keyword_id]
    end
  end
end
