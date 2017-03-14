require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it "destroys dependent courses" do
    teacher = FactoryGirl.build(:teacher)
    course = FactoryGirl.create(:course, teacher: teacher)
    teacher.courses << course

    expect{teacher.destroy}.to change{Course.count}.by(-1)

  end
end
