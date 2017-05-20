# Take in an array and a number
# Let the user know what the index of the number is
# print "Nil" if integer isn't present

# def search_array(array, n)
#   p array.rindex(n) if array.include?(n)
# end

# arr = [2, 4, 6, 8]

# search_array(arr, 6)

# ------------------------------------------------

def fibonacci(n)
  fib_array = [0, 1]
  repeat =	n - 2
  repeat.times { fib_array << fib_array[-1] + fib_array[-2] }
  p fib_array
end

fibonacci(6)

