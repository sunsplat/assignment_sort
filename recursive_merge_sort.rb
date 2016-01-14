
#Notes
# take array
# compare each element
# add smallest element to new array
# array_divide
# take the array
# split the array in half
# continue to split array until array.length == 1

def merge_sort(array)
	p "Array : #{array}"
	return array if array.length <= 1

	left = merge_sort(array[0...array.size/2])
	right = merge_sort(array[(array.size/2)...array.size])
	
	new_array = []
	left_index = 0
	right_index = 0

	while left.length >= 1 && right.length >= 1
		if left_index == left.size
			new_array << right[right_index...right.size]
			break
		elsif right_index == right.size
			new_array << left [left_index...left.size]
			break
		end

		if left[left_index] < right[right_index]
			new_array << left[left_index]
			left_index += 1
		else
			new_array << right[right_index]
			right_index += 1
		end
	end
	new_array.flatten
end
p merge_sort([1,3,7,2,5,-99,0])


## Merge Sort with element shift ##
def merge_sort_2(array)
	return array if array.length <= 1

	left = merge_sort_2(array[0...array.size/2])
	right = merge_sort_2(array[(array.size/2)...array.size])
	
	new_array = []

	until left.empty? || right.empty?
		if left[0] < right[0]
			  new_array << left.shift
		else
		    new_array << right.shift
		end    	  
  end
  left.length > 0 ? (new_array << left) : (new_array << right)	 

	new_array.flatten
end

puts "THIS IS MERGE SORT STYLE 2"
p merge_sort_2([1,3,7,2,5,-99,0])
p merge_sort_2([1,3,7,2,5,-99,136,5,23,100])


