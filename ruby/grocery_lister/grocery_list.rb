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


