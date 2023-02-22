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

  if s[0] =~ /(?=[^aeiou])(?=[a-z])/i
    return true;
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.empty?
    return false
  end

  lastTwo = s[-2,-1]

  if (s =~ /(?=[0-1])/) && (lastTwo =~ /(?=[0])/)
    return true
  end
  

  return false
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    unless isbn.is_a?(String)
      raise ArgumentError.new("Only strings are allowed as isbn")
    else
      if isbn.empty?
        raise ArgumentError.new("No empty strings as isbn")
      else
        @isbn = isbn
      end
    end

    unless price.is_a?(Numeric)
      raise ArgumentError.new("Only numbers are allowed as prices")
    else
      if price <= 0
        raise ArgumentError.new("Price cannot be 0 or below")
      else
        @price = price
      end
    end
  end

  attr_reader :isbn
  attr_writer :isbn

  attr_reader :price
  attr_writer :price

  def price_as_string
    numPrice = price.to_f
    priceString = "%.2f" % numPrice
      
    return "$#{priceString}"
  end

end
