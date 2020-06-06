require 'pry'

def my_all?(collection)
  i = 0
  block_return_values = []
  while i < collection.length
    block_return_values << yield(collection[i])
    i += 1
  end
  
  # determining whether the array contains any false elements
  if block_return_values.include?(false)
    false
  else
    true
  end
end

