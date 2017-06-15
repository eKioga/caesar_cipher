ALPHABET = 26

def caesar_cipher(string)
  shiftyArray = []
  charLine = string.chars.map(&:ord)

  shift = 1
  ALPHABET.times do |shift|
    shiftyArray << charLine.map do |c|
      ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
    end.join
  end

  shiftyArray
end

puts "Type what you want and see all the options!"
user_input = gets.chomp
puts caesar_cipher(user_input)