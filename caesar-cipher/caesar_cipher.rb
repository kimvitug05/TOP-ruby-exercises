# [Project: Caesar Cipher](https://www.theodinproject.com/courses/ruby-programming/lessons/caesar-cipher)

def ceasar_cipher(input, shift)
    upcase_alpha = ('A'..'Z').to_a
    downcase_alpha = ('a'..'z').to_a
    input = input.split('')
    cipher_string = ''
  
    input.map do |letter|
        if letter.upcase == letter.downcase
            cipher_string += letter
        elsif letter == letter.upcase
            cipher_string += upcase_alpha[(upcase_alpha.index(letter) + shift) % 26]
        elsif letter == letter.downcase
            cipher_string += downcase_alpha[(downcase_alpha.index(letter) + shift) % 26]
        end
    end
    puts cipher_string
end
  
  ceasar_cipher('What a string!', 5)
  ceasar_cipher('Dat Boi', 10)
  ceasar_cipher('Ymj Tins Uwtojhy Wzqjx!', -5)