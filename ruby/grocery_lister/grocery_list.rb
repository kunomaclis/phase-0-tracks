# Grocery list!!!
# Used to create, update, and read a current grocery list table through SQlite3
# Able to add and delete items from grocery list
# Print out final groceries

# Require SQlite3
require 'sqlite3'

# Make SQlite3 db on startup
db = SQlite3::Database.new('groceries.db')

# Make a grocery list table
create_table_cmd = <<-SQL
    CREATE TABLE IF NOT EXISTS list(
        id INTEGER PRIMARY KEY,
        name VARCHAR(255),
        quantity INTEGER

    )
SQL

db.execute(create_table_cmd)
