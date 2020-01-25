puts 'Please enter a string.'
original_string = gets.chomp.split(//)

puts 'Please enter the encryption key (number 0-25)'
encryption_key = gets.chomp.to_i

lowercase_alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]

uppercase_alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]

new_string = []

original_string.each do |character|
  count = encryption_key

  if lowercase_alphabet.include?(character)
    character_index = lowercase_alphabet.index(character)
  elsif uppercase_alphabet.include?(character)
    character_index = uppercase_alphabet.index(character)
  end

  if (character_index)
    while count > 0
      if character_index < 25
        character_index += 1
      else
        character_index = 0
      end

      count -= 1
    end
  end

  if lowercase_alphabet.include?(character)
    new_string.push(lowercase_alphabet[character_index])

  elsif uppercase_alphabet.include?(character)
    new_string.push(uppercase_alphabet[character_index])

  else
    new_string.push(character)
  end
end

puts new_string.join()
