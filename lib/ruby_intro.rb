# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0, :+)
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  search = {}
  arr.each_with_index do |num, i|
    return true unless search[n - num].nil?
    search[num] = i
  end
  false
end

# Part 2

def hello(name)
  'Hello, ' << name
end

def starts_with_consonant? s
  if s.length == 0
    false
  else
    verify = (s =~ /[bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ]/)
    !verify.nil? && verify == 0
  end
end  

def binary_multiple_of_4? s
  return false if s.empty?
  return true if (s.length == 1 && s == "0")
  return (s =~ /00\z/ && s =~ /\A[0|1]{3,}\z/)
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError if (isbn.empty? || price <= 0)
    @isbn = isbn
    @price = price
  end

  def price_as_string
    return "$%.2f" % price
  end
end
