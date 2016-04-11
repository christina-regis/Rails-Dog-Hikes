class AddColumnToHikeModel < ActiveRecord::Migration
  def change
    add_column :hikes, :distance, :float
    add_column :hikes, :directions, :string
    add_column :hikes, :poo_bags_available, :string
    add_column :hikes, :dogs_allowed_off_leash, :string
    add_column :hikes, :trash_cans, :string
  end
end
