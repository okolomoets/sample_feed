class CreateKeywords < ActiveRecord::Migration[5.0]
  def change
    create_table :keywords do |t|
      t.string  :title
      t.integer :score, default: 0, null: false
      t.integer  :word_type

      t.timestamps
    end
  end
end
