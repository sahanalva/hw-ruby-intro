# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE 
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.max(2).inject(0,:+)
end

require 'set'
def sum_to_n? arr, n
  # YOUR CODE HERE
  already_checked = Set.new
  arr.each do |num|
    return true if already_checked.include?(n - num)
    already_checked.add(num)
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s = s.downcase
  if s[0] =~ /[a-z]/ and s[0] =~ /[^aeiou]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s =~ /^[01]*00$|^0$/
      return true
  else 
      return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    
    raise ArgumentError, 'ISBN is empty' if isbn.to_s.strip.empty?  
    @isbn = isbn
    
    raise ArgumentError, 'Price is 0' if price == 0  
    raise ArgumentError, 'Price is negative' if price < 0  
    @price = price
  end
 
  def isbn
    @isbn
  end
  
  def isbn=(isbn)
    raise ArgumentError, 'ISBN is empty' if isbn.to_s.strip.empty?  
    @isbn = isbn
  end
  
  def price=(price)
    raise ArgumentError, 'Price is 0' if price == 0  
    raise ArgumentError, 'Price is negative' if price < 0  

    @price = price
  end
  
  def price
    @price
  end

  def price_as_string
    return '$'+sprintf('%.2f', @price)
  end
end
