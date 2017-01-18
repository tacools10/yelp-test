brussels = {
  "country" => "Belgium",
  "population" => 1_000_000,
  "monuments" => "Atomium"
}

brussels.each do | key, value |
  puts "The key #{key} is #{value}"
end

puts brussels.has_key?("population")
# "The key country is Belgium"
# "The key population is 1000000"
# The key monument is Atomium
