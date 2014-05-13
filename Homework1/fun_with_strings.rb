module FunWithStrings
  def palindrome?
	a = self
	a = a.downcase.scan(/\w/)
	a == a.reverse
  end

  def count_words
	words = Hash.new(0)
	a = self
	a.downcase.scan(/\w+/) do  |x| 
	words[x] +=1 
	end
	return words
  end

  def anagram_groups
    a = self
    h = Hash.new { |h,k| h[k] = Array.new }
    temp = Hash.new(0)
    a.downcase.scan(/\w+/) do |x|
	t = x.chars.sort.join
	h[t].push x
    end
	h.collect { |k,v| v}
    end
end
# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end


puts 'scream cars for four scar creams'.anagram_groups
