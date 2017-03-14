require 'rails_helper'

RSpec.describe "Teachers", type: :request do
  describe "GET /teachers" do
    teacher = FactoryGirl.create(:teacher)

    c1 = FactoryGirl.create(:course, teacher:teacher )
    c2 = FactoryGirl.create(:course, name:'GH', teacher: teacher)
    before do
      get "/teachers"
    end
    it "returns http success and json content type" do
      expect(response).to have_http_status(200)
      expect(response.content_type).to eq(Mime[:json])
    end
    it "returns a lists of teachers and their courses" do
    json_body = JSON.parse(response.body)
    last_teacher = json_body.last
      expect(last_teacher['courses'][0].with_indifferent_access).to match(
        {
          id: c1.id,
          name: c1.name
        }
        )
    end
  end
end
