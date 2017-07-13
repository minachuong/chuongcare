require 'rails_helper'
require 'test_methods'

RSpec.describe "CareReceivers", type: :feature, js: true do
  context "creating a care_receiver" do
    Steps "create a care_receiver" do
      Given "that I am an existing user and logged in" do
        create_user_and_log_in
      end
      When "add a care_receiver" do
        click_link "+ Add Care Receiver?"
        fill_in "care_receiver[first_name]", with: "Lai"
        fill_in "care_receiver[last_name]", with: "Chuong"
        click_button 'Create Care receiver'
      end
      Then "I have a care_receiver" do
        expect(page).to have_content("Lai Chuong")
      end
    end
  end
  context "sharing a care_receiver" do
    Steps "sharing a care_receiver" do
      Given "that I am an existing user and logged in with care_receivers" do
        create_user_and_log_in
      end
      When "add a care_receiver" do
        click_link "+ Add Care Receiver?"
        # fill_in "care_receiver[first_name]", with: "Lai"
        # fill_in "care_receiver[last_name]", with: "Chuong"
        # click_button 'Share Care Receiver'
      end
      Then "I have a care receiver" do
        # expect(page).to have_content("Lai Chuong")
      end
    end
  end
end
