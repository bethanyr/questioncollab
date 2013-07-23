require 'spec_helper'

feature "creating questions" do
  scenario "can create questions" do
    visit ('/')
    click_link 'New Question'
    fill_in "Title", :with => 'What is 2+2?'
    fill_in "Answer", :with => '4'
    fill_in "Category", :with => 'math'
    click_button 'Create Question'
    page.should have_content('Question has been created.')
  end



end
