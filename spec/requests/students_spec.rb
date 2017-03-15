require 'rails_helper'

RSpec.describe 'Students', type: :request do
  describe 'GET /students' do
    student = FactoryGirl.create(:student)
    teacher = FactoryGirl.create(:teacher)
    course = FactoryGirl.create(:course, teacher: teacher)
    student.courses << course
    before do
    get "/v1/students/#{student.id}"
    end
    it 'returns sucesss http status and content_type' do
      expect(response).to have_http_status(200)

      expect(response.content_type).to eq(Mime[:json])
    end

    it 'returns json api with students name and associated courses and teachers' do
       json_body = JSON.parse(response.body).with_indifferent_access

      expect(json_body).to match(
      id: student.id,
        name: student.name,
        courses: [
          id: course.id,
          name: course.name
        ],
        teachers: [
          id: teacher.id,
          name: teacher.name
        ]
      )
    end
  end
end
