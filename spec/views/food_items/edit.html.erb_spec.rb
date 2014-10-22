require 'rails_helper'

RSpec.describe "food_items/edit", :type => :view do
  before(:each) do
    @food_item = assign(:food_item, FoodItem.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit food_item form" do
    render

    assert_select "form[action=?][method=?]", food_item_path(@food_item), "post" do

      assert_select "input#food_item_name[name=?]", "food_item[name]"
    end
  end
end
