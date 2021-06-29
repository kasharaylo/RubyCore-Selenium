def hello_world(first_name = "", last_name = "")
  puts "Hello world"
  if last_name != "" && first_name != ""
    puts "My name is " + first_name + " " + last_name
  end
end

hello_world
hello_world("James", "Roberts")
hello_world("Jane", "Daniels")