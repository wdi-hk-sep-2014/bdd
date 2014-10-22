require 'rails_helper'

RSpec.describe "food_items/index", :type => :view do
  before(:each) do
    assign(:food_items, [
      FoodItem.create!(
        :name => "Name"
      ),
      FoodItem.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of food_items" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
