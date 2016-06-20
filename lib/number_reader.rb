module NumberReader
  DECIMALS = %w(zero one two three four five six seven eight nine)
  TWO_DIGIT = %w(ten eleven twelve thirteen fourteen fifteen sixteen seventeen
                 eighteen nineteen)
  UNIQUES = DECIMALS + TWO_DIGIT

  def convert_arabic_number_to_english(number)
    UNIQUES[number]
  end
end
