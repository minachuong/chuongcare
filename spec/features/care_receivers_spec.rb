require 'rails_helper'
require 'test_methods'

RSpec.describe "CareReceivers", type: :feature, js: true do
  context "creating a care receiver" do
    Steps "create a care receiver" do
      Given "that I am an existing user and logged in" do
        create_user_and_log_in
      end
      When "add a care_receiver" do
        click_link "+ Add Care Receiver?"
        fill_in "care_receiver[first_name]", with: "Lai"
        fill_in "care_receiver[last_name]", with: "Chuong"
        click_button 'Create Care receiver'
      end
      Then "I have a care receiver" do
        expect(page).to have_content("Lai Chuong")
      end
    end
  end

  context "sharing a care receiver" do
    Steps "sharing a care receiver" do
      Given "that I am logged in with a care receiver" do
        create_user_and_log_in
      end
      When "I view the details of a care receiver" do
        click_link "Lai Chuong"
      end
      Then "I can share that care receiver" do
        click_link "Share"
      end
      And "" do

      end
    end
  end
end
