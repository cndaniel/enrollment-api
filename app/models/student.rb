class Student < ApplicationRecord
  has_many :subscriptions
  has_many :courses, through: :subscriptions
  has_many :teachers, through: :courses
end
