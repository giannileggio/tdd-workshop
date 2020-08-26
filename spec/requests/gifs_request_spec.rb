require 'rails_helper'

RSpec.describe '/gifs' do
  it 'returns response status ok' do
    get '/gifs'
    expect(response.status).to be 200
  end

  it 'returns json' do
    get '/gifs'
    expect(response.media_type).to eq 'application/json'
  end
end
