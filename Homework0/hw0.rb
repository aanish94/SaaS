#Aanish Patel Sikora
#Homework 0
#/usr/bin/ruby

#---------Part 3
class BookInStock
	attr_accessor :isbn
	attr_accessor :price

	def initialize(tISBN, price)
		if tISBN.empty? || price <= 0
			raise ArgumentError
		end
		@isbn = tISBN
		@price = price
	end
	
	def price_as_string
		sprintf('$%0.2f',@price).gsub(/(\d)(?=(\d\d\d)+(?!\d))/, "\\1,")
	end
end

#----------PART 2
def hello(name)
   "Hello, " + name
end

def starts_with_consonant?(s)
   if s =~ /\A[b-df-hj-np-tv-z]/i; return true; end
   return false
end

def binary_multiple_of_4?(s)
   if s !~ /^[0-1]+$/; return false; end
   if s !~ /^(?<num>\d+)$/; return false; end
   temp = s.to_i(2)
   if temp % 4 == 0; return true; end
   return false
end

#------------Part 1
def sum(array)
  sum = 0
  if array.empty?
	return 0
  end
  array.each { |x| sum+=x }
  return sum
end


def max_2_sum(arr)
  if arr.empty?
	return 0
  end
  if arr.size == 1
	return arr[0]
  end
  array = arr.sort
  first = array.pop
  second = array.pop
  first + second
end

def sum_to_n?(arr,n)
  if arr.empty? or arr.size == 1
	return false
  end
  for i in arr
	for j in arr
		if (i != j) and (i + j == n)
			return true
		end
	end
  end
  return false
end


