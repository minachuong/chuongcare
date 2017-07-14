require 'rails_helper'

RSpec.describe "daily_records/new", type: :view do
  before(:each) do
    assign(:daily_record, DailyRecord.new(
      :systolic_bp => 1,
      :diastolic_bp => 1,
      :heart_rate => 1,
      :notes => "MyText",
      :care_receiver_id => 1,
      :user_id => 1
    ))
  end

  it "renders new daily_record form" do
    render

    assert_select "form[action=?][method=?]", daily_records_path, "post" do

      assert_select "input[name=?]", "daily_record[systolic_bp]"

      assert_select "input[name=?]", "daily_record[diastolic_bp]"

      assert_select "input[name=?]", "daily_record[heart_rate]"

      assert_select "textarea[name=?]", "daily_record[notes]"

      assert_select "input[name=?]", "daily_record[care_receiver_id]"

      assert_select "input[name=?]", "daily_record[user_id]"
    end
  end
end
