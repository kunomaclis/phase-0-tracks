# Take in an array and a number
# Let the user know what the index of the number is
# print "Nil" if integer isn't present

# def search_array(array, n)
#   p array.rindex(n) if array.include?(n)
# end

# arr = [2, 4, 6, 8]

# search_array(arr, 6)

# ------------------------------------------------

# def fibonacci(n)
#   fib_array = [0, 1]
#   repeat =	n - 2
#   repeat.times { fib_array << fib_array[-1] + fib_array[-2] }
#   p fib_array
# end

# fibonacci(100)

#--------------------------------------------------

# Bubble Sorting
# Take in an array
# Compare current array value with next index value. If value is greater than, swap places with next index value
# Continue iterating through index values until there are no more comparisons to be made

# def bubblez(array)
#   n = array.length
#   loop do
#     swapped = false
#     (n - 1).times do |i|
#       next unless array[i] > array[i + 1]
#       array[i], array[i + 1] = array[i + 1], array[i]
#       swapped = true
#       p array
#     end
#     break unless swapped
#   end
#   array
# end

# array = [1, 20, 50, 1, 3, 100, 50, 1]

# bubblez(array)
