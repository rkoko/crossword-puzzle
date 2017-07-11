class CreateCrosswordWords < ActiveRecord::Migration[5.1]
  def change
    create_table :crossword_words do |t|
      t.references :word, foreign_key: true
      t.references :crossword, foreign_key: true

      t.timestamps
    end
  end
end
