require 'rails_helper'
require 'test_methods'

RSpec.describe "CareReceivers", type: :feature, js: true do
  context "creating a care receiver" do
    Steps "create a care receiver" do
      Given "that I am an existing user and logged in" do
        create_user_in_ui("a@a.com")
        log_in("a@a.com")
      end
      When "add a care_receiver" do
        click_link "+ Add Care Receiver?"
      end
      Then "I can see a form for creating a receiver" do
        expect(page).to have_content "New Care Receiver"
      end
      And "I can create a care receiver" do
        fill_in "care_receiver[first_name]", with: "Lai"
        fill_in "care_receiver[last_name]", with: "Chuong"
        click_button 'Add Care Receiver'
      end
      Then "I have a care receiver" do
        expect(page).to have_content("Lai Chuong")
      end
    end
  end

  context "sharing a care receiver" do
    Steps "sharing a care receiver" do
      Given "that I am logged in with a care receiver and there is another user" do
        create_user_in_ui("b@b.com")
        create_user_in_ui("a@a.com")
        log_in("a@a.com")
        create_care_receiver("Lai", "Chuong")
      end
      When "I share a care receiver" do
        click_button "Share"
        fill_in "care_receiver[email]", with: "b@b.com"
        click_button "Share Care Receiver"
      end
      Then "I have shared my care receiver" do

      end
    end
  end
end
