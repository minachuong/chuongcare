require 'rails_helper'

RSpec.describe "daily_records/show", type: :view do
  before(:each) do
    @daily_record = assign(:daily_record, DailyRecord.create!(
      :systolic_bp => 2,
      :diastolic_bp => 3,
      :heart_rate => 4,
      :notes => "MyText",
      :care_receiver_id => 5,
      :user_id => 6
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
  end
end
