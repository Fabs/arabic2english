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

  context '[20-99] two-digit' do
    context 'NOT following rule' do
      it { expect(convert(20)).to eq('twenty') }
      it { expect(convert(30)).to eq('thirty') }
      it { expect(convert(40)).to eq('fourty') }
      it { expect(convert(50)).to eq('fifty') }
      it { expect(convert(60)).to eq('sixty') }
      it { expect(convert(70)).to eq('seventy') }
      it { expect(convert(80)).to eq('eighty') }
      it { expect(convert(90)).to eq('ninety') }
    end

    context 'following simple rule' do

    end
  end
end
