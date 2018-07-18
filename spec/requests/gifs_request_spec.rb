require 'rails_helper'

RSpec.describe '/gifs' do
  describe 'GET /gifs' do
    context 'when parameters are valid' do
      it 'returns response code 200' do
        get '/gifs?q=friday'
        expect(response.code).to eq '200'
      end
    end

    context 'when q is empty' do
      it 'returns response code 400' do
        get '/gifs?q='
        expect(response.code).to eq '400'
      end
    end

    context 'when there is no parameter' do
      it 'returns response code 400' do
        get '/gifs'
        expect(response.code).to eq '400'
      end
    end
  end
end
