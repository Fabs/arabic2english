module NumberReader
  DECIMALS = %w(zero one two three four five six seven eight nine)
  def convert_arabic_number_to_english(number)
    DECIMALS[number]
  end
end
