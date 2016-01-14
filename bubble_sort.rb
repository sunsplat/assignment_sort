
def bubble_sort(array)
  
  loop do
    
    is_swap =  false

    num = array.size-1
    (0...num).each do |index|
      if array[index] > array[index+1]
         array[index],array[index+1] = array[index+1],array[index]

         is_swap = true
      end 
    end 
    break if !is_swap 
    num -= 1
  end

  array

end  

p bubble_sort([1,3,7,2,-99,5,10,20])

