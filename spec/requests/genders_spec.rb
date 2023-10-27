require 'swagger_helper'

RSpec.describe 'Genders API', type: :request do
  describe 'GET /index' do
    before do
      @genders = []
      5.times do |index|
        @genders << Gender.create!(name: "Test name #{index}")
      end
    end

    before { get '/api/v1/genders' }

    it 'returns a successful response' do
      expect(response).to have_http_status(:success)
    end

    it 'returns all genders' do
      expect(JSON.parse(response.body).size).to eq(5)
    end

    after do
      Gender.destroy_all
    end
  end
end
