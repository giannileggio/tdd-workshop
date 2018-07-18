require 'rails_helper'

class GiphyClient
  def search(q); end
end

RSpec.describe GifsController do
  describe '#index' do
    let(:client) { instance_double(GiphyClient, search: [1, 2]) }

    before do
      allow(GiphyClient).to receive(:new).and_return(client)
      get :index, params: { q: 'dublin' }
    end

    context 'when parameters are valid' do
      it { expect(client).to have_received(:search).with('dublin') }

      it { expect(JSON.parse(response.body)).to eq [1, 2] }
    end

    context 'when parameters are not valid' do
    end
  end
end