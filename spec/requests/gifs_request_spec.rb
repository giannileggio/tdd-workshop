require 'rails_helper'

RSpec.describe '/gifs', type: :request do
  describe 'GET /gifs' do
    subject(:route) { get "/gifs/?q=#{query}" }

    before { route }

    context 'when the request is valid' do
      let(:query) { 'friday' }

      it { expect(response.code).to eq '200' }
    end

    context 'when the request is not valid' do
      let(:query) { nil }

      it { expect(response.code).to eq '400' }
    end

    context 'when the q parameter is missing' do
      subject(:route) { get '/gifs' }

      it { expect(response.code).to eq '400' }
    end
  end
end