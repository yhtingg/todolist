class CreateTodolists < ActiveRecord::Migration[5.2]
  def change
    create_table :todolists do |t|
      t.string :todo
      t.integer :priority
      t.date :deadline

      t.timestamps
    end
  end
end
