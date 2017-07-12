require 'rails_helper'
require 'test_methods'

RSpec.describe "Patients", type: :feature, js: true do
  context "creating a patient" do
    Steps "create a patient" do
      Given "that I am an existing user and logged in" do
        create_user_and_log_in
      end
      When "add a patient" do
        click_link "+ Add Care Receiver?"
        fill_in "patient[first_name]", with: "Lai"
        fill_in "patient[last_name]", with: "Chuong"
        click_button 'Create Patient'
      end
      Then "I have a patient" do
        expect(page).to have_content("Lai Chuong")
      end
    end
  end
end
