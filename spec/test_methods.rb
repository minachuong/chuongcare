module TestMethods

  def create_user_in_ui(email)
    visit '/'
    click_link 'Sign Up'
    fill_in "user[email]", with: email
    fill_in "user[password]", with: "password"
    fill_in "user[password_confirmation]", with: "password"
    click_button 'Sign up'
    click_link 'Sign Out'
  end

  def log_in(email)
    visit '/'
    click_link 'Sign In'
    fill_in "user[email]", with: email
    fill_in "user[password]", with: "password"
    click_button 'Log in'
  end

  def create_care_receiver(first_name, last_name)
    visit '/'
    click_link "+ Add Care Receiver?"
    fill_in "care_receiver[first_name]", with: first_name
    fill_in "care_receiver[last_name]", with: last_name
    click_button 'Add Care Receiver'
  end


end

RSpec.configure do |config|
  config.include TestMethods, type: :feature
end
