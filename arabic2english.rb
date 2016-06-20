require_relative 'lib/fixnum_arabic_to_english.rb'

if ARGV.length == 0
  puts 'You need to specify a number'
  exit 1
else
  puts ARGV[0].to_i.to_english
end
