# Secret agent name flipper-dipper

# Aim of program:
# Take in full name as input
# Make last name first, and first name last.
# change any vowels 'a, e, i, o, u,' and advance them one vowel forward: a => e and u => a
# change consonants in name to the next consonant in the alphabet
# print results and add to a hash of correct name and agent name

def agent_namer
  agents = {}
  response = ''
  until response == 'quit'
    puts 'Give me your full name, agent (or tell me when to quit)'
    response = gets.chomp
    break if response == 'quit'
    # flip first and last names
    agent_name = response.reverse.split(/\s+/, 2).collect(&:reverse).join(' ')
    # first scramble vowels
    scrambled_vowel = agent_name.tr('aeiouAEIOU', 'eiouaEIOUA')
    # then scramble consonants
    scrambled_consonents = scrambled_vowel.tr('bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ', 'cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZB')
    # Store that data in an agents hash!!!
    agents.store(response, scrambled_consonents)

    puts "#{response}, your new name is #{scrambled_consonents}"

  end
  puts "Okay, here's a list of our current agents that have been scrambled through this session:"
  puts agents
end

p agent_namer
