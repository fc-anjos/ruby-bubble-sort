array = [1, 2, 1, 5, 7, 3, 4, 1, 2]

def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true

    array.each_with_index do |e, i|
      if i == array.length - 1
        break
        print i
      end

      first = array[i]
      second = array[i+1]

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
