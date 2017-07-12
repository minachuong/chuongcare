module TestMethods

  def create_user_and_log_in
    visit '/'
    click_link 'Sign Up'
    fill_in "user[email]", with: "a@c.com"
    fill_in "user[password]", with: "asdfasdf"
    fill_in "user[password_confirmation]", with: "asdfasdf"
    click_button 'Sign up'
  end

end

RSpec.configure do |config|
  config.include TestMethods, type: :feature
end
