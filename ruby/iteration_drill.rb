# Array Drills

zombie_apocalypse_supplies = ['hatchet', 'rations', 'water jug', 'binoculars',
                              'shotgun', 'compass', 'CB radio', 'batteries']

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk

supply_list = zombie_apocalypse_supplies.join('*')
print supply_list

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.

list_length = zombie_apocalypse_supplies.count
puts list_length
index = 0
swap_flag = true

while swap_flag == true
  swap_flag = false
  while index < list_length - 1
    if zombie_apocalypse_supplies[index].downcase.ord > zombie_apocalypse_supplies[index + 1].downcase.ord
      z_temp = zombie_apocalypse_supplies[index + 1]
      zombie_apocalypse_supplies[index + 1] = zombie_apocalypse_supplies[index]
      zombie_apocalypse_supplies[index] = z_temp
      swap_flag = true
    end
    index += 1
  end
  index = 0
end
puts 'Sorted list: '
print zombie_apocalypse_supplies

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
def check_list(input)
  zombie_apocalypse_supplies = ['hatchet', 'rations', 'water jug', 'binoculars',
                                'shotgun', 'compass', 'CB radio', 'batteries']

  zombie_apocalypse_supplies.each do |x|
    if x == input
      puts "Here's #{x}!"
    else
      puts "I don't see #{x}..."
    end
  end
end
check_list('batteries')

# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.

zombie_apocalypse_supplies.slice!(0..2)
# print zombie_apocalypse_supplies

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = ['warm clothes', 'rations', 'compass', 'camp stove',
                           'solar battery', 'flashlight']

updated_supplies = other_survivor_supplies + zombie_apocalypse_supplies

puts updated_supplies.uniq.sort

# Hash Drills

extinct_animals = {
  'Tasmanian Tiger' => 1936,
  'Eastern Hare Wallaby' => 1890,
  'Dodo' => 1662,
  'Pyrenean Ibex' => 2000,
  'Passenger Pigeon' => 1914,
  'West African Black Rhinoceros' => 2011,
  'Laysan Crake' => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
extinct_animals.each { |ani, year| print "#{ani} -- #{year} * " }

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# This is the only way I've been able to get it to work so far:
p extinct_animals.select { |_key, value| value <= 2000 }

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# extinct_animals.update(extinct_animals){|k,v| v -= 3}
correction = extinct_animals.replace(
  'Tasmanian Tiger' => 1933,
  'Eastern Hare Wallaby' => 1887,
  'Dodo' => 1659,
  'Pyrenean Ibex' => 1997,
  'Passenger Pigeon' => 1911,
  'West African Black Rhinoceros' => 2009,
  'Laysan Crake' => 1920
)

puts correction

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.

extinct_animals.each do |animal, _year|
  animals = ['Andean Cat', 'Dodo', 'Saiga Antelope']
  index = 0
  while index < animals.length
    puts "#{animal} is on the list!" if animal == animals[index]
    index += 1
  end
end

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
temp = {}
temp = extinct_animals.select { |k, _v| k == 'Passenger Pigeon' }
temp.merge!(extinct_animals) { |_k, v1, _v2| v1 }
extinct_animals = temp
return_deleted = extinct_animals.shift
puts extinct_animals
p return_deleted
