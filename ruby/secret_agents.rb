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

