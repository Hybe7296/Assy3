# frozen_string_literal: true

# Part 1

def sum(arr)
  arr.sum
end

def max_2_sum(arr)
    return 0 if arr.empty?
     return arr[0] if arr.length == 1

     arr.sort.last(2).sum
end

def sum_to_n?(arr, number)
    return false if arr.length < 2
    arr.combination(2).any? { |a, b| a + b == number }
end

# Part 2

def hello(name)
    "Hello, #{name}"
end

def starts_with_consonant?(string)
    !!(string =~ /^(?![aeiou])[a-z]/i)
end

def binary_multiple_of_4?(string)
    return false if string.empty? || string.match?(/[^01]/)
    return true if string == '0'
    string.end_with?('00')
end

# Part 3

# Object representing a book
class BookInStock
    attr_accessor :isbn, :price
    
    def initialize(isbn, price)
    # Raise an ArgumentError if validation fails
      raise ArgumentError, 'ISBN cannot be empty' if isbn.empty?
      raise ArgumentError, 'Price must be greater than zero' if price <= 0

      @isbn = isbn
      @price = price
      end
end
