require 'spec_helper'
feature "Delete questions" do
  scenario "User can delete questions" do
    question= FactoryGirl.create(:question, :title => "What is 2+2?")
    visit ('/')
    click_link 'What is 2+2?'
    click_link 'Delete Question'
    page.should have_content('Question has been deleted.')
    page.should_not have_content('What is 2+2?')
  end
end
