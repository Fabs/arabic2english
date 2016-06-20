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
      90 => 'ninety',
      100 => 'hundred'
    }.freeze
  end

  SOLVER = NumberReader.build_unique_number_solver.freeze

  def arabic_to_english(number)
    # Leading numbers with zeroes (e.g. 100, 1000) and unique numbers
    return 'one hundred' if number == 100
    return SOLVER[number] if SOLVER[number]
    return SOLVER[number / 100] + ' ' + SOLVER[100] if number % 100 == 0

    recursive_calculation(number)
  end

  def recursive_calculation(number)
    magnitude = 10**(number.to_s.size - 1)

    result = []
    result << arabic_to_english((number / magnitude) * magnitude)
    result << arabic_to_english(number % magnitude)
    result.join(separator_for(number))
  end

  def separator_for(number)
    return '-' if number <= 99
    return ' and ' if number <= 999 && number % 100 <= 10
    ' '
  end
end
