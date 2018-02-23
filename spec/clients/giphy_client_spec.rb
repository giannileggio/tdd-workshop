require 'rails_helper'

RSpec.describe GiphyClient do
  describe '.search' do
    subject(:search) { described_class.new.search(q: 'friday') }

    it 'returns results with title' do
      expect(subject).to all(have_key('title'))
    end
  end
end
