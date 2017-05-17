# Pseudocode

# Define two methods, Encrypt & Decrypt

# Encrypt Method-----
# Index starts at 0. then counts +1 letter forward until -1 str.length
# At each Index print .next
# if a 'z' is encountered. make it into an 'a'

def encrypt(str)
  index = 0
  while index < str.length
    str[index] = if str[index].include? 'z'
                   'a'
                   # "z" to "a" for edge case
                 else
                   str[index].next
                 end
    index += 1
  end
  str
end

# puts encrypt("abc")
# puts encrypt("zed")

# Decrypt method

# make alphabet variable with 'a'..'z'
# Loop index at 0 and count through letters of str input
# compare str index with alphabet variable index -1
# print new letters

def decrypt(str)
  index = 0
  while index < str.length
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    str[index] = alphabet[alphabet.index(str[index]) - 1]
    index += 1
  end
  str
end

# puts decrypt("bcd")
# puts decrypt("afe")

# puts decrypt(encrypt("swordfish"))

# This nested method works because each method has it's own place in the code
# Proper placement of global and local variables is helpful for these to communicated properly
# 'First, I'll decrypt swordfish, then I'll run encrypt on whatever decrypt does to "swordfish!'

# Secret agent program
# Asks if program should be encrypted or decrypted
# If 'encrypted' or 'decrypted' isn't typed. repeat program
# ask for password
# print result and exit

# correct choice sorter

choice = ''
puts 'Greetings, Agent. Would you like to encrypt or decrypt a password?'
choice = gets.chomp
until choice == 'encrypt' || choice == 'decrypt'
  puts "What? Type 'decrypt' or 'encrypt', agent"
  choice = gets.chomp
end

# program

puts 'enter a password.'

password = gets.chomp.downcase

if choice == 'encrypt'
  puts encrypt(password)
elsif choice == 'decrypt'
  puts decrypt(password)
end

