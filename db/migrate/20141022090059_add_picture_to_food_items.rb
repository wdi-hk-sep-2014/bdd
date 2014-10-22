class AddPictureToFoodItems < ActiveRecord::Migration
  def change
    add_column :food_items, :picture, :string
  end
end
