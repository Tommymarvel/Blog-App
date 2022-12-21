require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    it 'returns http success and check correct placeholder text.' do
      get '/'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Here is a list of users')
    end
  end

  describe 'GET /show' do
    it 'returns http success and check correct placeholder text.' do
      get '/users/:id'
      expect(response).to have_http_status(:ok)
      expect(response.body).to include('Here show user by id')
    end
  end
end