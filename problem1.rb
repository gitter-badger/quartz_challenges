# problem1.txt

# Write a class or function that computes the histogram of a series of numbers

# It should take an array as an input and return an array of the unique inputs and their counts.

# Example:
#   Input: [22,33,22,44,44,44,22,33,33,33,33]
#   Output: [ [22,3], [33,5], [44,3]]

def histogram(list)
  list.map{|n| [n, list.count(n)]}.uniq
end

p histogram([22,33,22,44,44,44,22,33,33,33,33])
