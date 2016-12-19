# Release 0 


tester = [2, 4, 6, 8, 10, 12, 14, 16, 18]






def searcharray(n, arr)
  testvar = 0 
  if arr.include?(n) == FALSE
    puts "nil" 
    return
  end
  
  arr.each do |testvar|
    
    if n == arr[testvar]
   puts testvar 
   #else
   # p nil 
   end 
  end 
   
end

searcharray(22, tester)




#Release 1


def fib(n)
 
  return n if n <= 1
 
  (fib(n - 1) + fib(n - 2))
  #p fibon
end

#puts fib(10)

def fin(n)
  fi = [0,1] 
 # fi.push(0) 
 # fi.push(1) 
  
  z = 2
  return n if n <= 1 
  
  while z < n 
    fi[z] = (fib(z-2) + fib(z-1))
    z += 1
  end
  fi[n]=(fib(n-2) + fib(n-1))
  p fi
end 

fin(15)



# Release 2 - WIP

ray = [3, 5, 1, 8, 2, 6, 4, 1]

def bubble_sort(list)
  return list if list.size <= 1 # already sorted
  swapped = true
  while swapped do
    swapped = false
    0.upto(list.size-2) do |i|
      if list[i] > list[i+1]
        list[i], list[i+1] = list[i+1], list[i] # swap values
        swapped = true
      end
    end    
  end

  p list
end

bubble_sort(ray)