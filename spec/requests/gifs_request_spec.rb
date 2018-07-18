require 'rails_helper'

RSpec.describe '/gifs' do
  describe 'GET /gifs' do
    it 'returns response code 200' do
      get '/gifs?q=friday'
      expect(response.code).to eq '200'
    end
  end
end
