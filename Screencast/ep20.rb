# Blocks

10.times {puts "Hello World"}

a = 10
a.times {puts "Hello World"}

# Hash methods

james_bond = { :first_name => "James", :last_name => "Bond", :middle_name => "Robert"}
james_bond.each_key { |key| puts key }
james_bond.each_key { |key| puts james_bond[key] }

# Open/Create file and write string

File.open("/tmp/blocks.txt", "w") { |f| f.puts "hello world" }