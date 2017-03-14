class StudentSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :courses, through: :subscriptions
  has_many :teachers, through: :courses
end
