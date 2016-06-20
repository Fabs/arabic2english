require_relative '../lib/number_reader.rb'

RSpec.describe NumberReader do
  include NumberReader
  alias_method 'convert', 'convert_arabic_number_to_english'

  context '[0-9] decimals' do
    it { expect(convert(0)).to eq('zero') }

    it { expect(convert(1)).to eq('one') }
    it { expect(convert(2)).to eq('two') }
    it { expect(convert(3)).to eq('three') }
    it { expect(convert(4)).to eq('four') }
    it { expect(convert(5)).to eq('five') }
    it { expect(convert(6)).to eq('six') }
    it { expect(convert(7)).to eq('seven') }
    it { expect(convert(8)).to eq('eight') }
    it { expect(convert(9)).to eq('nine') }
  end
end
