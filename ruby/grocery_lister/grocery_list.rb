# Grocery list!!!
# Used to create, update, and read a current grocery list table through SQLite3
# Able to add and delete items from grocery list
# Print out final groceries

# Require SQlite3
require 'sqlite3'

# Make SQlite3 db on startup
db = SQLite3::Database.new('groceries.db')
db.results_as_hash = true

# Make a grocery list table
create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS list(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        quantity INTEGER
    )
SQL

# Create a list table
db.execute(create_table_cmd)

# Test to insert grocery items:
# db.execute("INSERT INTO list (name, quantity) VALUES ('eggs', 12)")

# db.execute("INSERT INTO list (name, quantity) VALUES ('cheese', 1)")

# Print full grocery list block
list = db.execute('SELECT * FROM list')
list.each do |item|
  puts "#{item['quantity']} #{item['name']}"
end

# Methods for user interaction

def add_item(db, item, quantity)
  db.execute('INSERT INTO list (name, quantity) VALUES (?, ?)', [item], [quantity])
end

def remove_item(db, item)
  db.execute('DELETE FROM list WHERE name=(?)', [item])
end

# Begin program:

puts '-' * 62
puts "Hendee Grocery List Checker: Because it's best to be prepared!"
puts '-' * 62

puts 'You can add, remove, edit, or review:'
guidance_choice = gets.chomp
if guidance_choice == 'add'
  continue = ''
  until continue == 'no'
    puts 'What item would you like to add?'
    item_to_add = gets.chomp
    break if item_to_add == 'no'
    puts 'How many of that will you need?'
    item_quantity = gets.chomp
    break if item_to_add == 'no'
    puts "Okay, adding #{item_quantity} #{item_to_add} to the list!"
    add_item(db, item_to_add, item_quantity)
    puts 'Would you like to add more items?'
    continue = gets.chomp.downcase
    break if continue == 'no'
  end
end
