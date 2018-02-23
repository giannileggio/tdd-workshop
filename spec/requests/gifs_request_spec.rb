require 'rails_helper'

RSpec.describe '/gifs', type: :request do
  context 'when q is defined' do
    describe 'GET /gifs?q=friday' do
      it 'is a valid route' do
        get '/gifs?q=friday'
        expect(response.code).to eq '200'
      end
    end
  end

  context 'when q is not defined' do
    describe 'GET /gifs' do
      it 'is an invalid route' do
        get '/gifs'
        expect(response.code).to eq '404'
      end
    end
  end
end
