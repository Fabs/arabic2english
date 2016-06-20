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

  context '[10-19] two-digit numbers up to 19' do
    it { expect(convert(10)).to eq('ten') }
    it { expect(convert(11)).to eq('eleven') }
    it { expect(convert(12)).to eq('twelve') }
    it { expect(convert(13)).to eq('thirteen') }
    it { expect(convert(14)).to eq('fourteen') }
    it { expect(convert(15)).to eq('fifteen') }
    it { expect(convert(16)).to eq('sixteen') }
    it { expect(convert(17)).to eq('seventeen') }
    it { expect(convert(18)).to eq('eighteen') }
    it { expect(convert(19)).to eq('nineteen') }
  end
end
