puts 'Please enter a string.'
original_string = gets.chomp.split(//)

puts 'Please enter the encryption key (number 0-25)'
encryption_key = gets.chomp.to_i

lowercase_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

uppercase_alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

new_string = []

original_string.each do |character|
  if lowercase_alphabet.include?(character)
    character_index = lowercase_alphabet.index(character)
    new_string.push(lowercase_alphabet[character_index + encryption_key])
  elsif uppercase_alphabet.include?(character)
    character_index = uppercase_alphabet.index(character)
    new_string.push(uppercase_alphabet[character_index + encryption_key])
  else
    new_string.push(character)
  end
end

puts new_string.join()
