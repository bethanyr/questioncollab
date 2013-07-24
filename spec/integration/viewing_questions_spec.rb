require 'spec_helper'

feature "Viewing questions" do
  scenario "User can view all questions" do

    user = FactoryGirl.create(:user)
    user.confirm!
    sign_in_as!(user)
    question = FactoryGirl.create(:question, :title => "What is 2+2?")
    visit ('/')
    page.should have_content("What is 2+2?")
    #click_link question.title
  end
  scenario "User can view the details of a question" do
    question = FactoryGirl.create(:question, :title => "What is 2+2?")
    sign_in_as!(FactoryGirl.create(:confirmed_user))
    #user = FactoryGirl.create(:confirmed_user)
    #sign_in_as!(user)
    visit ('/')
    click_link question.title
    page.current_url.should == question_url(question)
  end
  scenario "User can view questions that they have worked on" do
    pending("write test for viewing only questions a user has worked on")
  end
end
