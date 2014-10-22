require 'rails_helper'

RSpec.describe "food_items/new", :type => :view do
  before(:each) do
    assign(:food_item, FoodItem.new(
      :name => "MyString"
    ))
  end

  it "renders new food_item form" do
    render

    assert_select "form[action=?][method=?]", food_items_path, "post" do

      assert_select "input#food_item_name[name=?]", "food_item[name]"
    end
  end
end
