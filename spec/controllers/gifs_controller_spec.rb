require 'rails_helper'

class GiphyClient
  def search(q); end
end

RSpec.describe GifsController do
  describe '#index' do
    let(:client) { instance_double(GiphyClient, search: true) }

    before do
      allow(GiphyClient).to receive(:new).and_return(client)
    end

    context 'when parameters are valid' do
      it 'calls the giphy client' do
        get :index, params: { q: 'dublin' }
        expect(client).to have_received(:search).with('dublin')
      end
    end

    context 'when parameters are not valid' do
    end
  end
end