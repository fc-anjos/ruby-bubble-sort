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

def bubble_sort_by(array)
  sorted = false

  until sorted
    sorted = true

    (0..array.length - 2).each do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array
end

# array = Array.new(10) { rand(1...9) }
array = bubble_sort_by(['hi', 'hello', 'hey']) do |left, right|
  left.length - right.length
end
