# This is a trickier assignment -- you will need to implement Merge Sort recursively. 
# Again, you have some pretty good pseudocode for the outer merge_sort function, so build that first. 
# Then use the resources at your disposal to build a merge function that makes the sort work correctly.

# take array
# compare each element
# add smallest element to new array
# 

def merge_sort(array)
	new_array = []
	new_array << array_divide(array)
	puts "#{new_array} new_array"
		# array.each_slice(1).to_a
end

# array_divide
# take the array
# split the array in half
# continue to split array until array.length == 1

def array_divide(array)
	p "Array : #{array}"
	return array if array.length <= 1

	left = array_divide(array[0...array.size/2])
	right = array_divide(array[(array.size/2)...array.size])
	
	new_array = []
	left_index = 0
	right_index = 0
	# left : [5]
	# right: [4]
	while left.length >= 1 && right.length >= 1
		if left[left_index] < right[right_index]
			new_array << left[left_index]
			left_index += 1
		else
			new_array << right[right_index]
			right_index += 1
		end
		if left_index == left.size
			new_array << right
			break
		elsif right_index == right.size
			new_array << left
			break
		end
	end
	new_array.flatten
end
array_divide([5,4])
array_divide([1,3,7,2,5])
array_divide([1,3,7,2,5,4])

def array_conquer
end

def array_merge
end

# merge_sort( [1,3,7,2,5] )
