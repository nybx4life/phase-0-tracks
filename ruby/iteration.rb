arr = [1, 2, 3,4,5,6,7,8,9,10]
has = {"tom" => "cat", "jerry" => "mouse", "spike" => "dog"}
p arr
arr.map! do |ar|
  
  ar * 5
end
p arr

has.each do |pet|
  puts pet
end

# A method that iterates through the items, deleting any that meet a certain condition (for example, deleting any numbers that are less than 5).

#initial array 
ray = [2, 4, 6, 8, 10, 1 , 3, 5, 7, 9, 0]

#go through each element in array
ray.each do |r|
  puts "Value of r: #{r}"
  puts "Index of r:  #{ray.index(r)}"
  
  #instead of outright removing the position, which shifts elements down in array and causes some elements to be skipped,
  #I'll make those positions nil
  if r <= 5
    ray[ray.index(r)] = nil
  end
end
#now, remove all nil instances in array.
ray.compact!

#print array
p ray

#A method that filters a data structure for only items that do satisfy a certain condition (for example, keeping any numbers that are less than 5).

#initial array 
ray = [2, 4, 6, 8, 10, 1 , 3, 5, 7, 9, 0]

#go through each element in array
ray.each do |r|
  
  #instead of outright removing the position, which shifts elements down in array and causes some elements to be skipped,
  #I'll make those positions nil
  if (r  <  5)
    puts "safe"
  else
    ray[ray.index(r)] = nil
  end
end
#now, remove all nil instances in array.
ray.compact!

#print array
p ray


#A different method that filters a data structure for only items satisfying a certain condition -- Ruby offers several options!

ray = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

ray.keep_if{|y| y <  5}


p ray


#A method that will remove items from a data structure until the condition in the block evaluates to false, then stops (you may not find a perfectly working option for the hash, and that's okay).

ray = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]



while ray.size > 5
  ray.pop
end

p ray

