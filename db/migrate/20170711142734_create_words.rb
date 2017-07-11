class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :answer
      t.string :clue
      t.integer :value

      t.timestamps
    end
  end
end
