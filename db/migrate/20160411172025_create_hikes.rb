class CreateHikes < ActiveRecord::Migration
  def change
    create_table :hikes do |t|
      t.string :name
      t.string :location
      t.string :difficulty
      t.text :description
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
