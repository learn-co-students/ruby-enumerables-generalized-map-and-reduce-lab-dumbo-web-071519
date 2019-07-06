def map(array)
  new_array = []
  i = 0 
  while i < array.length do
    new_array << yield(array[i])
    i += 1 
  end
  new_array
end


def reduce(array, starting_point = nil)
  if starting_point
    total = starting_point
    i = 0 
  else
    total = array[0]
    i = 1 
  end
  new_total = total
  while i < array.length do
    new_total = yield(new_total, array[i])
    i += 1 
  end
  new_total
end

