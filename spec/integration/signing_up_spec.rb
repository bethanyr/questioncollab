require 'spec_helper'
feature "User sign up" do
  scenario "User can sign up" do
    visit '/'
    click_link 'Sign up'
    fill_in "Email", :with => "user@question.com"
    fill_in "Password", :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    message = "You have signed up successfully."
    page.should have_content(message)
  end
end
