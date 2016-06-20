require_relative '../lib/number_reader.rb'

RSpec.describe NumberReader do
  include NumberReader
  alias_method 'convert', 'convert_arabic_number_to_english'

  context '[0-9] decimals' do
    it { expect(convert(0)).to eq('zero') }
  end
end
