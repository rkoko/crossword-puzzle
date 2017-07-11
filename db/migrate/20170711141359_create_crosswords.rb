class CreateCrosswords < ActiveRecord::Migration[5.1]
  def change
    create_table :crosswords do |t|
      t.string :name
      t.string :difficulty

      t.timestamps
    end
  end
end
