class Authorship < ActiveRecord::Base
  attr_accessible :answer

  belongs_to :user
  belongs_to :question

end
