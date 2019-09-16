def map(source_array)
  new = []
  i = 0
  while i < source_array.length do
    new.push(yield(source_array[i]))
    i += 1
  end
  new
end

def reduce(source_array, starting_point = 0)
  result = starting_point
  i = 0
  while i < source_array.length do
    puts "#{result} is result before update"
    result = yield(source_array[i], result)
    puts "#{result} is result after update"
    i += 1
  end
  result
end
