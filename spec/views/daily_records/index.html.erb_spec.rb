require 'rails_helper'

RSpec.describe "daily_records/index", type: :view do
  before(:each) do
    assign(:daily_records, [
      DailyRecord.create!(
        :systolic_bp => 2,
        :diastolic_bp => 3,
        :heart_rate => 4,
        :notes => "MyText",
        :care_receiver_id => 5,
        :user_id => 6
      ),
      DailyRecord.create!(
        :systolic_bp => 2,
        :diastolic_bp => 3,
        :heart_rate => 4,
        :notes => "MyText",
        :care_receiver_id => 5,
        :user_id => 6
      )
    ])
  end

  it "renders a list of daily_records" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
  end
end
