class UsersController < ApplicationController

  def show
    @question = Question.find(params[:question_id])
    @user = @question.users.find(params[:id])
  end

end
