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

# Print full grocery list method
def print_list(db)
  list = db.execute('SELECT * FROM list')
  list.each do |item|
    puts "#{item['quantity']} #{item['name']}"
  end
end

# Methods for user interaction

def add_item(db, item, quantity)
  db.execute('INSERT INTO list (name, quantity) VALUES (?, ?)', [item], [quantity])
end

def remove_item(db, item)
  db.execute('DELETE FROM list WHERE name=(?)', [item])
end

def edit_item(db, item, quantity)
  db.execute('UPDATE list SET quantity=(?) WHERE name=(?)', [quantity], [item])
end
# Begin program:

puts '-' * 62
puts "Hendee Grocery List Checker: Because it's best to be prepared!"
puts '-' * 62

done = false
until done
  puts "Please select a function: 'Add', 'Remove', 'Edit', or 'Review'. 'Done' will exit the program."
  guidance_choice = gets.chomp.downcase.strip
  going_back = ''
  done = true if guidance_choice == 'done'
  # Review list
  if guidance_choice == 'review'
    puts 'This is your grocery list:'
    print_list(db)
  end
  # Add an item with breaks to go back
  if guidance_choice == 'add'
    until going_back == 'back'
      puts "Here's the current list:"
      print_list(db)
      puts "What item are you adding? you can go 'back' whenever!"
      item_to_add = gets.chomp.downcase
      break if item_to_add == 'back'
      puts "How many #{item_to_add} will you need?"
      item_quantity = gets.chomp.downcase
      break if item_quantity == 'back'
      puts "Okay, adding #{item_quantity} #{item_to_add} to the list!"
      puts '*' * 62
      add_item(db, item_to_add, item_quantity)
    end
  end
  # Remove an item with breaks to go back
  if guidance_choice == 'remove'
    until going_back == 'back'
      puts "Here's the current list:"
      print_list(db)
      puts "What would you like to remove? Or you can go 'back' whenever"
      item_to_remove = gets.chomp.downcase
      break if item_to_remove == 'back'
      puts "Got it, removing #{item_to_remove} from the list..."
      puts '*' * 62
      remove_item(db, item_to_remove)
    end
  end
  # Edit an existing item's quantity on the list
  next unless guidance_choice == 'edit'
  until going_back == 'back'
    puts "Here's the current list:"
    print_list(db)
    puts "What item are you editing? you can go 'back' whenever!"
    item_to_edit = gets.chomp.downcase
    if item_to_edit == 'review'
      print_list(db)
      puts 'so what would you like to edit?'
      item_to_edit = gets.chomp.downcase!
    end
    break if item_to_edit == 'back'
    puts 'and how many of that item are you going to purchase instead?'
    item_quantity_edit = gets.chomp.downcase
    break if item_quantity_edit == 'back'
    puts "Okay, you're now purchasing #{item_quantity_edit} #{item_to_edit}."
    puts '*' * 62
    edit_item(db, item_to_edit, item_quantity_edit)
  end
end

puts 'Have a nice day! Remember your list:'
print_list(db)
