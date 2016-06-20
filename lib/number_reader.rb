# The module number reader converts numbers in Fixnum (Arabic)
# to their english.
# Numbers must be positive, and up to 1000
module NumberReader
  class << self
    def build_unique_number_solver
      bellow_twenty = (DECIMALS + TWO_DIGIT)
      bellow_twenty_with_index = bellow_twenty.map.with_index { |n, i| [i, n] }

      UNIQUE_NUMBERS.merge(Hash[bellow_twenty_with_index])
    end

    DECIMALS = %w(zero one two three four five six seven eight nine).freeze
    TWO_DIGIT = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen
                   eighteen nineteen).freeze

    UNIQUE_NUMBERS = {
      20 => 'twenty',
      30 => 'thirty',
      40 => 'fourty',
      50 => 'fifty',
      60 => 'sixty',
      70 => 'seventy',
      80 => 'eighty',
      90 => 'ninety'
    }.freeze
  end

  SOLVER = NumberReader.build_unique_number_solver.freeze

  def convert_arabic_number_to_english(number)
    result = SOLVER[number]
    return result if SOLVER[number]

    digit = number % 10
    most_significant = number - digit
    SOLVER[most_significant] + '-' + SOLVER[digit]
  end
end
