require "rails_helper"

RSpec.describe DailyRecordsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/daily_records").to route_to("daily_records#index")
    end

    it "routes to #new" do
      expect(:get => "/daily_records/new").to route_to("daily_records#new")
    end

    it "routes to #show" do
      expect(:get => "/daily_records/1").to route_to("daily_records#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/daily_records/1/edit").to route_to("daily_records#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/daily_records").to route_to("daily_records#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/daily_records/1").to route_to("daily_records#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/daily_records/1").to route_to("daily_records#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/daily_records/1").to route_to("daily_records#destroy", :id => "1")
    end

  end
end
