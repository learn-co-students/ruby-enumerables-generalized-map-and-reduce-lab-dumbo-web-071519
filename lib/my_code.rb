def map(source_array)
  i = 0
  new = []
  while i < source_array.length do
    new.push( yield(source_array[i]) )    
    i += 1
  end
  new
end

def reduce(source_array, start =0)
  i = 0
  sum = start
  while i < source_array.length do
    if source_array[i] == nil 
      sum = false
    end
    sum = yield(sum, source_array[i])
    i += 1
  end
  sum
end