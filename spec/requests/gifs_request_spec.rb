require 'rails_helper'

RSpec.shared_examples 'valid response' do
  it { expect(response.code).to eq '200' }
end

RSpec.describe '/gifs', type: :request do
  before { route }

  describe 'GET /gifs' do
    subject(:route) { get "/gifs/?q=#{query}" }

    context 'when the request is valid' do
      let(:query) { 'friday' }

      it_behaves_like 'valid response'
    end

    context 'when the q parameter is empty' do
      let(:query) { nil }

      it { expect(response.code).to eq '400' }
    end

    context 'when the q parameter is missing' do
      subject(:route) { get '/gifs' }

      it { expect(response.code).to eq '400' }
    end
  end

  describe 'GET /gifs/:slug' do
    subject(:route) { get "/gifs/#{slug}" }

    context 'when the slug is valid' do
      let(:slug) { 'JIX9t2j0ZTN9S' }

      it_behaves_like 'valid response'
    end

    context 'when the slug is not valid' do
    end
  end
end
