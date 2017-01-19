# OPERATION KITTEN EXPLOSION!

# talk about Object Relational Mapping (ORM)

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
db = SQLite3::Database.new("game_library.db")
db.results_as_hash = true

# learn about fancy string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS game_library(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    console INT,
	FOREIGN KEY(console) REFERENCES console_list(console_id)
  )
  
SQL

nu_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS console_list(
    console_id INTEGER PRIMARY KEY,
    console_name VARCHAR(255)
  )
  
SQL

# create a game_library table (if it's not there already)
db.execute(create_table_cmd)
db.execute(nu_table_cmd)

# add a test kitten
# db.execute("INSERT INTO game_library (name, console) VALUES ('Bob', 10)")

# add LOOOOTS of game_library!
# so. many. game_library. 
#KittenExplosion
def create_game(db, name, console)
  db.execute("INSERT INTO game_library (name, console) VALUES (?, ?)", [name, console])
end

def create_console(db, console_name)
	db.execute("INSERT INTO console_list (console_name) VALUES (?)", [console_name])
end

create_console(db,"Playstation 2")
create_console(db, "Nintendo Wii")
create_console(db, "Microsoft Xbox")
10.times do
  create_game(db, Faker::Name.name, 1)
  #create_console(db, Faker::Name.console_name)
end


# explore ORM by retrieving data
# game_library = db.execute("SELECT * FROM game_library")
# game_library.each do |kitten|
#  puts "#{kitten['name']} is #{kitten['console']}"
# end

