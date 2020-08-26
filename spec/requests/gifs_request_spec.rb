require 'rails_helper'

RSpec.describe '/gifs' do
  it 'returns response status ok' do
    get '/gifs'
    expect(response.status).to be 200
  end
end
