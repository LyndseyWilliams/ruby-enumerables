 TODO: Print the elements at indices 1, 3, 5, 7, etc. on separate lines.
#       You should make use of Enumerable#each_with_index
def print_odd_indexed_integers(array)
	odd_index_values = []
	array.each_with_index do | value , index|
		if index.odd?
			odd_index_values << value
		end	
	end
	 odd_index_values
end


# TODO: Take an Array of Strings and return a new Array with an exclamation point appended to each String.
#       You should make use of Enumerable#map
def add_bang(array)
	array.map {|string| string + "!"}
end


# TODO: Calculate the sum of an Array of numbers.
#       You should make use of Enumerable#reduce
def sum(array)
	array.reduce(:+)
end

# TODO: Reorganize an Array of the elements into groups of 3, and then sort each group alphabetically.
#       You should make use of Enumerable#each_slice
def sorted_triples(array)
	new_array = []
	array.each_slice(3) {|grouped_words| new_array << grouped_words.sort}
	new_array
end



# Driver code... don't change this.
puts print_odd_indexed_integers([2, 4, 6, 8, 10, 12]) # this should print "4\n8\n12"

puts odd_integers([3, 4, 7, 9, 10, 16]) == [3, 7, 9]

puts first_under([13, 21, 7, 0, 11, 106], 10) == 7

 puts add_bang(["hi", "mom"]) == ["hi!", "mom!"]

puts sum([1, 1, 2, 3, 5]) == 12

words = %w(the salted pork is particularly good)
puts sorted_triples(words) == [["pork", "salted", "the"],
                              ["good", "is", "particularly"]]