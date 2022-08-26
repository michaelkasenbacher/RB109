# input: array
# output: array
# aim: bubble sort the array: compare ele1 with ele 2, if greater-> swap
# then continue 
# algo: map_with_index?

def bubble_sort!(array)
  array.size.times do
    array.map.with_index do |num, idx|
      break if array.size-1 == idx
      if array[idx] > array[idx+1]
        array[idx], array[idx+1] = array[idx+1], array[idx]
      end
    end
  end
  # counter = 0
  # while counter < array.size
    
  #   if array[counter] > array[counter+1]
  #     array = array[counter+1], array[counter]
  #   end
  #   counter += 1
  # end
  array
end


# array = [5, 3]
# p bubble_sort!([5,3])
# array == [3, 5]

# array = [6, 2, 7, 1, 4]
p bubble_sort!([6, 2, 7, 1, 4])
# array == [1, 2, 4, 6, 7]

# array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array)
# array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)