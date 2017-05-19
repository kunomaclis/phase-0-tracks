# Secret agent name flipper-dipper

# Aim of program:
# Take in full name as input
# Make last name first, and first name last.
# change any vowels 'a, e, i, o, u,' and advance them one vowel forward: a => e and u => a
# change consonants in name to the next consonant in the alphabet
# print results and add to a hash of correct name and agent name

vowels = 'aeiou'

consonants = 'bcdfghjklmnpqrstvwxyz'

def agent_namer
  puts 'Give me your full name, agent'
  # flip first and last names
  agent_name = gets.chomp.reverse.split(/\s+/, 2).collect(&:reverse).join(' ')
  # first scramble vowels
  scrambled_vowel = agent_name.tr("aeiouAEIOU", "uaeioUAEIO")
  # then scramble consonents
end

p agent_namer
