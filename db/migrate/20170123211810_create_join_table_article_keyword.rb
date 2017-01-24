class CreateJoinTableArticleKeyword < ActiveRecord::Migration[5.0]
  def change
    create_table :article_keywords do |t|
      t.integer :article_id
      t.integer :keyword_id

      t.integer :entries_count, default: 0, null: false

      t.index [:article_id, :keyword_id]
    end
  end
end
