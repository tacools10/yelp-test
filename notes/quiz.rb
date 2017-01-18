students = [["Mary", 28], ["John", 26], ["Joseph", 25]]

hash_array = students.each do |row_array|
  row_array.map do |key, value|
    puts "#{key} and #{value}"
    row_array[key]=value
  end
end

return hash_array
