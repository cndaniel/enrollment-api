require 'rails_helper'

RSpec.describe 'list all Teachers', type: :request do
  teacher = FactoryGirl.create(:teacher)
  describe 'GET /teachers' do
    c1 = FactoryGirl.create(:course, teacher: teacher)

    before do
      get '/v1//teachers'
    end
    it 'returns http success and json content type' do
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq(Mime[:json])
    end
    it 'returns a lists of teachers and their courses' do
      json_body = JSON.parse(response.body)
      last_teacher = json_body.last
      expect(last_teacher['courses'][0].with_indifferent_access).to match(
        id: c1.id,
        name: c1.name
      )
    end
  end

  describe 'DELETE /teachers/id' do
    before do
      delete "/v1/teachers/#{teacher.id}"
    end

    it 'returns http no content' do
      expect(response).to have_http_status(204)
    end
  end
end
