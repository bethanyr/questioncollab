require 'spec_helper'

feature "editing questions" do
  scenario "user can edit a question" do
    question= FactoryGirl.create(:question, :title => "What is 2+2?")
    sign_in_as!(FactoryGirl.create(:confirmed_user))
    visit ('/')
    click_link 'What is 2+2?'
    click_link 'Edit Question'
    fill_in "Title", :with => 'What is 2+5?'
    fill_in "Answer", :with => '7'
    click_button 'Update Question'
    page.should have_content('Question has been updated.')
    page.should have_content('What is 2+5?')
    page.should_not have_content('What is 2+2?')

  end
end
