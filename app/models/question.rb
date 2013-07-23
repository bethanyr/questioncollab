class Question < ActiveRecord::Base
  attr_accessible :answer, :category, :title
  has_and_belongs_to_many :users
end
