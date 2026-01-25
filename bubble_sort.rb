# frozen_string_literal: true

def bubble_sort(arr)
  n = arr.length
  arr.each_with_index do |_i_value, i|
    arr.each_with_index do |j_value, j|
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if j < n - i - 1 && j_value > arr[j + 1]
    end
  end
end

p bubble_sort([64, 34, 25, 12, 22, 11, 90])
# Output: [11, 12, 22, 25, 34, 64, 90]
