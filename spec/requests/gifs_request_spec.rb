require 'rails_helper'

RSpec.describe '/gifs' do
  describe 'GET /gifs' do
    context 'when query if defined' do
      before { get '/gifs?query=summer' }

      it { expect(response.status).to be 200 }

      it { expect(response.media_type).to eq 'application/json' }
    end

    context 'when query is empty' do
      before { get '/gifs?query=' }

      it { expect(response.status).to be 400 }
    end
  end
end
