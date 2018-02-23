require 'rails_helper'

RSpec.describe GifsController do
  describe '.index' do
    it 'calls the giphy client' do
      client = instance_double(GiphyClient, search: true)
      allow(GiphyClient).to receive(:new).and_return(client)
      get :index, params: { q: 'friday' }
      expect(client).to have_received(:search).with('friday')
    end
  end
end