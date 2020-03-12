def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true

    (0..array.length - 2).each do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end


array = Array.new(10) { rand(1...9) }
puts " The original array is: #{array} "
bubble_sort(array)
puts " The sorted array is: #{array} "

