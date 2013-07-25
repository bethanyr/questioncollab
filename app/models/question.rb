class Question < ActiveRecord::Base
  attr_accessible :answer, :category, :title
  has_many :authorships
  has_many :users, through: :authorships
end
