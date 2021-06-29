def hello_world(first_name = "", last_name = "")
  gretting = "Hello world\n"
  if last_name != "" && first_name != ""
    gretting += "My name is " + first_name + " " + last_name
  end
  return gretting
end

puts hello_world("Kevin", "Kalkin")
#send_via_email  hello_world
#send_over_http  hello_world