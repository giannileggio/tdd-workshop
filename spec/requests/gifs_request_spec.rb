require 'rails_helper'

RSpec.describe '/gifs', type: :request do
  describe 'GET /gifs' do
    context 'when the request is valid' do
      it 'returns response code 200' do
        get '/gifs?q=friday'
        expect(response.code).to eq '200'
      end
    end

    context 'when the request is not valid'
  end
end