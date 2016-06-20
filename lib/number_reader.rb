module NumberReader


  def convert_arabic_number_to_english(number)
    solver = unique_number_solver

    solver[number]
  end

private
  DECIMALS = %w(zero one two three four five six seven eight nine)
  TWO_DIGIT = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen
                 eighteen nineteen)
  UNIQUE_NUMBERS = {
    20 => 'twenty',
    30 => 'thirty',
    40 => 'fourty',
    50 => 'fifty',
    60 => 'sixty',
    70 => 'seventy',
    70 => 'seventy',
    80 => 'eighty',
    90 => 'ninety',
  }

  def unique_number_solver
    bellow_twenty = (DECIMALS + TWO_DIGIT).map.with_index{|number, i| [i, number]}
    hash_bellow_twenty = Hash[ bellow_twenty ]

    UNIQUE_NUMBERS.merge(hash_bellow_twenty)
  end
end
