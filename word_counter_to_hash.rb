# 1. Create a program to analyze a large block of text and
#  report back on the frequency of
# each word in the text.

# a. Start by sorting the text into a hash where each word is a key with the word’s
# value being the amount of times it has been used in the block:
# {the: 10, john: 1, of: 15}

# b. Once you’ve created this hash, return the word that has been used the most

# c. When you’re done, encapsul your script inside of a method that can analyze
# any block of text fed to it

# Method

def word_freq_hash (  )
	
	# Get input from user
	p "Please enter a string of text."
	text = gets

	# Split text into an array
	words = text.split(" ")

	# Declare a local hash to hold frequency of words
	results = Hash.new(0)

	# Count words and assign to key & value
	words.each { |t| results[t] += 1 }

	# Print results
	print "The word " 
	results.each { |k,v| print "\"" + k.to_s + "\" was used the most" if v == results.values.max} 
end

word_freq_hash
