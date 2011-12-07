require 'json'

data = {
  "firstname" => "Vaclav",
  "lastname" => "Juchelka",
  "phones" => {
    "home" => "123456",
    "office" => "321654"
  },
  "clothes" => ["tshirt with dog", "blue trouses"]
}

puts data

ser = JSON.generate(data)

puts ser

h = JSON.parse(ser)

puts h
