# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  num = 0
  arr.each do |i|
    num += i
  end
  return num
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.empty?
    return 0
  end

  if arr.length == 1
    return arr[0]
  end

  arr.sort!
  return arr.pop + arr.pop

end

def sum_to_n? arr, n

  if arr.empty? || arr.length == 1
    return false
  end

  for i in arr
    for j in arr
      if i + j == n && i != j
        return true
      end
    end
  end

    return false
end

# Part 2

def hello(name)
  return "Hello, #{ name }"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end

  #if s[0] =~ 

  if s[0] =~ /[^aeiou]/
    return true;
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
