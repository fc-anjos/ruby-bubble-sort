array = [1, 2, 1, 5, 7, 3, 4, 1, 2]

def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true

    (0..array.length - 2).each do |i|
      first = array[i]
      second = array[i + 1]

      if first > second
        array[i] = second
        array[i + 1] = first
        sorted = false
      end

    end
  end
  array
end

print(bubble_sort(array))
