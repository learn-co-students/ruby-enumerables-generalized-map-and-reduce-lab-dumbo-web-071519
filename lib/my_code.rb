# Your Code Here
def map(arr)
  new_arr=[] 
  for i in arr
    new_arr.push(yield(i))
  end 
  return new_arr
end

def reduce(arr, start=0)
  total=start
  for i in arr
    total=yield(total, i)
  end
  if total==false
    return false
  elsif total==0 || total==true
    return true
  end
  return total
end