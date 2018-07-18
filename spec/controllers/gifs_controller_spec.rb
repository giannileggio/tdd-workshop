require 'rails_helper'

class GiphyClient
  def search(q); end
end

RSpec.describe GifsController, type: :controller do
  describe '#index' do
    subject(:index) { get :index, params: { q: 'friday' } }

    let(:client) { instance_double('client', search: gifs) }
    let(:gifs) { [{}, {}] }

    before do
      allow(GiphyClient).to receive(:new).and_return(client)
      index
    end

    it 'calls the giphy client' do
      expect(client).to have_received(:search).with('friday')
    end

    it 'returns gifs' do
      expect(JSON.parse(response.body)).to eq gifs
    end
  end
end