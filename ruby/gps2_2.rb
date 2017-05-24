# GPS 2.2 with Mitchell

# 1. Create List
# 2. Add item w/ quantity
# 3. Remove Item
# 4. Update Quantites
# 5. Print List

# Method to create a list
# input: no input
# creates an empty hash for further list creation
# output: Hash

def init_list
  groceries = {}
end

# Method to add an item to a list
# input: list(grocery_list), item name(string), and optional quantity(integer)
# steps: add item to list hash. Always assume quantity of 1
# output: Adds key/value pairs to the hash with a quantity of 1

def add_item(list, item, quantity = 1)
  list[item] = quantity
end

# Method to remove an item from the list
# input: list, input
# steps: delete if the input matches an item on list hash
# output: Removes key/value pair from hash

def remove_item(list, input)
  list.delete_if { |item, _quantity| item.casecmp(input.downcase).zero? }
end

# Method to update the quantity of an item
# input: list hash, item for input, quantity of item
# steps: look to list hash and change amount of key to inputted value of item
# output: Updates value for spefific key

def update_quantity(list, item, quantity)
  list.store(item, quantity)
end

# Method to print a list and make it look pretty
# input: call print method
# steps: write block to print each item in sequence using iteration
# output: Nicely formatted list

def print_list(list)
  puts '=========================================================='
  list.each do |key, value|
    puts "#{key.capitalize} -- #{value}"
  end
end

# Grocery List Program!!!

puts 'Initalizing grocery list creation tool...'
grocery_list = init_list
list_finished = false
until list_finished
  puts 'Would you like to add an item, remove an item, change a quanity, or finish the list (add/remove/update/finish)?'
  user_action = gets.chomp
  break if user_action == 'finish'
    # ADD
  if user_action == 'add'
    puts 'What item would you like to add to the grocery list?'
    list_item = gets.chomp
    add_item(grocery_list, list_item)
    print_list(grocery_list)
    # REMOVE
  elsif user_action == 'remove'
    puts 'What items would you like to remove from the list?'
    list_item = gets.chomp
    remove_item(grocery_list, list_item)
    print_list(grocery_list)
    # CHANGE
  elsif user_action == 'change'
    puts 'What item quantity would you like to change?'
    list_item = gets.chomp
    puts 'What should the new quantity be?'
    item_quantity = gets.chomp.to_i
    update_quantity(grocery_list, list_item, item_quantity)
    print_list(grocery_list)
    # WHAT?!?!
  else
    puts "I am sorry, I didn't understand you. please choose: add/remove/update/finish."
 end
end
puts '*******************************************************'
puts 'Here is the final list!'
print_list(grocery_list)

# Reflections

# Pseudocode is INCREDIBLY helpful in regards to understanding inputs and how methods can interact with one another. I need to practice writing pseudocode in plain english

# Hashes are capable of having a key and a value, which makes them harder to implement quickly. Arrays are great at gathering a bulk of data but have no specificity for quanitities

# A method returns whatever variable you assign it. As in... Anything!

# I find the best way to pass information between methods is to create new objects to specify through message. The biggest portion of learning through this was creating a list hash to constantly filter through my methods

# Rely on outside input to call on methods. Methods can be messy if they have internal data structures that originate inside of themselves. Scope is a pain. I need to work on loops. I'm tired of breaking things. 