def search_array(array_ints, search_value)
	counter = 0
	found_bool = false
	while counter < array_ints.length && found_bool == false
		if array_ints[counter] == search_value
			result = counter
			found_bool = true
		end
		counter += 1
	end
	p result
end


arr = [42, 89, 23, 1]
search_array(arr, 23)

# make loop so it keeps running while the length of the array is less than the input argument
# take the last two indexes of the array, add them together, and add that value to the end of the array

def fib(total_terms)
	fibonacci = [0, 1] # initalize array of size two
	while fibonacci.length < total_terms
		new_term = fibonacci[-1] + fibonacci[-2]
		fibonacci.push(new_term)
	end
	p fibonacci
end


if fib(100)[-1] == 218922995834555169026
	puts "The two numbers match!"
else
	puts "The two number don't appear to match :("
end

def bubble_sort (array)
	swapped = -1
	while swapped != 0
		swapped = 0
		counter = 0
		while counter < array.length - 1
			if array[counter] > array[counter + 1]
				placeholder = array[counter + 1]
				array[counter + 1] = array[counter]
				array[counter] = placeholder
				swapped = 1
			end
			counter += 1
		end
		p array
	end
end

random_array = [4, 9, 1, 29, 3, 12, 17, 5]
bubble_sort(random_array)