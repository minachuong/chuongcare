require 'rails_helper'
require 'test_methods'

RSpec.describe "Home", type: :feature, js: true do
  context 'visiting the website for the first time' do
    Steps 'visiting the website' do
      When 'I visit the website for the first time' do
        visit '/'
      end
      Then 'I am welcomed' do
        expect(page).to have_content("Welcome to Chuong Care")
      end
    end
  end

  context 'signing up' do
    Steps 'signing up' do
      When 'signing up' do
        visit '/'
        click_link 'Sign Up'
      end
      Then 'can sign up' do
        expect(page).to have_content("Sign Up")
      end
      When 'register' do
        fill_in "user[email]", with: "a@a.com"
        fill_in "user[password]", with: "password"
        fill_in "user[password_confirmation]", with: "password"
        click_button 'Sign Up'
      end
      Then 'I am a user' do
        expect(page).to have_content("Dashboard")
      end
    end
  end

  context 'signing in and out' do
    Steps 'signing in and out' do
      Given 'I am an existing user and not signed in' do
        create_user_in_ui("b@b.com")
      end
      When 'I sign in' do
        click_button 'Sign In'
        fill_in "user[email]", with: "b@b.com"
        fill_in "user[password]", with: "password"
        click_button 'Log in'
      end
      Then 'I can see my dashboard' do
        expect(page).to have_content("Dashboard")
      end
      And 'I can sign out' do
        click_link 'Sign Out'
        expect(page).to have_content("Welcome to Chuong Care")
      end
    end
  end

end
