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

  #If the array is empty or 1, then it returns false
  if arr.empty? || arr.length == 1
    return false
  end

  #Nested array, checks to see if any two numbers in the array add up to n
  for i in arr
    for j in arr
      #The two numbers that add up to n cannot be at the same index
      if i + j == n && i != j
        return true
      end
    end
  end

  #End case return false
    return false
end

# Part 2

def hello(name)
  return "Hello, #{ name }"
end

def starts_with_consonant? s
  # Returns false if the string is empty
  if s.empty?
    return false
  end

  #Checks the first letter of the string only
  #If the first letter is not a, e, i, o, or u, and is between a-z (a letter), returns true
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

  #Constructor, only takes non-empty strings as isbn, and non-negative numbers as price, otherwise raises argument error
  def initialize(isbn, price)
    #Checking that isbn is a string
    unless isbn.is_a?(String)
      raise ArgumentError.new("Only strings are allowed as isbn")
    else
      #Checking that isbn is not empty
      if isbn.empty?
        raise ArgumentError.new("No empty strings as isbn")
      else
        @isbn = isbn
      end
    end

    #Checking that price is a number
    unless price.is_a?(Numeric)
      raise ArgumentError.new("Only numbers are allowed as prices")
    else
      #Checking if price is above 0
      if price <= 0
        raise ArgumentError.new("Price cannot be 0 or below")
      else
        @price = price
      end
    end
  end

  #Getter and setter for isbn
  attr_reader :isbn
  attr_writer :isbn

  #Getter and setter for price
  attr_reader :price
  attr_writer :price

  #Converts numerical price to string
  def price_as_string
    #Converts the integer price to a float
    numPrice = price.to_f

    #Formats the float to have two decimal places
    priceString = "%.2f" % numPrice
      
    #Returns the price as a string with a dollar sign attached
    return "$#{priceString}"
  end

end
