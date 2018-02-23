require 'rails_helper'

RSpec.describe '/gifs', type: :request do
  describe 'GET /gifs' do
    context 'when q is defined' do
      it 'is a valid route' do
        get '/gifs?q=friday'
        expect(response.code).to eq '200'
      end
    end

    context 'when q is not defined' do
      it 'is an invalid route' do
        get '/gifs'
        expect(response.code).to eq '404'
      end
    end
  end
end
