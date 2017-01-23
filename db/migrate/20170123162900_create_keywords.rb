class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.string  :title
      t.integer :rating
      t.string  :word_type

      t.timestamps
    end
  end
end
