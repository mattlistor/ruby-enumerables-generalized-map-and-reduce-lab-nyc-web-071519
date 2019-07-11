def map(source_array) 
  source_array.length.times do |i|
    source_array[i] = yield(source_array[i])
  end
  return source_array
end

def reduce(source_array, starting_point = 0)
  source_array.length.times do |i|
    if yield(source_array[i], starting_point) == true)
      starting_point = yield(source_array[i], starting_point)
    else
      return false
    end
  end
  return starting_point
end

def reduce_to_all_true(source_array)
  source_array.length.times do |i|
    if source_array[i] == false 
      return false
    end
  end
  return true
end
