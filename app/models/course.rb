class Course < ApplicationRecord
  has_many :subscriptions
  belongs_to :teacher
  has_many :students, through: :subscriptions
  
end
