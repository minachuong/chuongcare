require 'rails_helper'

RSpec.describe "DailyRecords", type: :request do
  describe "GET /daily_records" do
    it "works! (now write some real specs)" do
      get daily_records_path
      expect(response).to have_http_status(200)
    end
  end
end
