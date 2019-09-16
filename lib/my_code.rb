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
    result = yield(source_array[i], result)
    i += 1
  end
  
  # this final line gets the tests to pass, but I wonder if there's a different way to write line 15
  # i.e. result = yield(source_array[i], result)
  # that allows the final expression to just return result
  result ? result : FALSE
end
