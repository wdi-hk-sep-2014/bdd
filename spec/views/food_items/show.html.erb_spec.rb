require 'rails_helper'

RSpec.describe "food_items/show", :type => :view do
  before(:each) do
    @food_item = assign(:food_item, FoodItem.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
