# frozen_string_literal: true

# Build a method #bubble_sort that takes an array and returns a sorted array
# using the bubble sort method where each element is compared to the one next
# to it and they are swapped if the one on the left is larger than the one on the right.

def bubble_sort(array)
  array_end = array.length - 2
  n = 0
  # n reduces how far the sort moves through the array by 1 each iteration.
  # After each pass the highest number found will be at the end of the array
  # and wont need to be checked again.
  while n < array.length
    (0..array_end - n).each do |i|
      array[i], array[i + 1] = array[i + 1], array[i] if array[i] > array[i + 1]
    end
    n += 1
  end
  array
end

p bubble_sort([4, 3, 78, 2, 0, 2])
