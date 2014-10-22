require "rails_helper"

RSpec.describe FoodItemsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/food_items").to route_to("food_items#index")
    end

    it "routes to #new" do
      expect(:get => "/food_items/new").to route_to("food_items#new")
    end

    it "routes to #show" do
      expect(:get => "/food_items/1").to route_to("food_items#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/food_items/1/edit").to route_to("food_items#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/food_items").to route_to("food_items#create")
    end

    it "routes to #update" do
      expect(:put => "/food_items/1").to route_to("food_items#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/food_items/1").to route_to("food_items#destroy", :id => "1")
    end

  end
end
