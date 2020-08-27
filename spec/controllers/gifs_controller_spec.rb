require 'rails_helper'

RSpec.describe GifsController do
  describe '#index' do
    let(:client) { instance_double(GiphyClient, search: [{ title: 'a' }, { title: 'b' }]) }
    before do
      allow(GiphyClient).to receive(:new).and_return(client)
    end

    context 'when query is defined' do
      it 'returns results from giphy' do
        get :index, params: { query: 'summer' }
        expect(JSON.parse(response.body)).to eq [{ 'title' => 'a' }, { 'title' => 'b' }]
      end
    end

    context 'when query is empty' do
      it 'returns results from giphy' do
        get :index, params: { query: '' }
        expect(JSON.parse(response.body)).to eq({ 'error' => 'query must be defined' })
      end

      it 'doesn\'t call the client' do
        get :index, params: { query: '' }
        expect(client).not_to have_received(:search)
      end
    end
  end
end
