require_relative 'number_reader.rb'

# Monkey patch fixnum to read numbers
class Fixnum
  include NumberReader
  def to_english
    arabic_to_english(self)
  end
end
