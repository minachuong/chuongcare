require 'rails_helper'

RSpec.describe "LandingPages", type: :feature, js: true do
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
        expect(page).to have_content("Sign up")
      end
      When 'register' do
        fill_in "user[email]", with: "a@c.com"
        fill_in "user[password]", with: "asdfasdf"
        fill_in "user[password_confirmation]", with: "asdfasdf"
        click_button 'Sign up'
      end
      Then 'I am a user' do
        expect(page).to have_content("Welcome back")
      end
    end
  end
end
