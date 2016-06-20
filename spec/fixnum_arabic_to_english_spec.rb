require_relative '../lib/fixnum_arabic_to_english.rb'

RSpec.describe Fixnum do
  it 'knows to english method' do
    expect(42.to_english).to eq('forty-two')
  end
end
