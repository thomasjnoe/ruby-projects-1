def caeser_cipher(string, number)
	new_string = []
	letters = string.split("")
	letters.each do |letter|
		if /[a-zA-Z]/ =~ letter # Check if each character in string is a character between a-z or A-Z
			orig_char = letter.ord
			new_char = orig_char + (number % 26) # Accounts for numbers outside of the 1-25 range.
		  # Perform z to a looping if necessary
			if (orig_char <= 90 and new_char > 90) || (orig_char <= 122 and new_char > 122)
				new_char -= 26
			elsif (orig_char >= 65 and new_char < 65) || (orig_char >= 97 and new_char < 97)
				new_char += 26
			end
			letter = new_char.chr
		end
		new_string.push(letter)
	end
	puts new_string.join("")
end

caeser_cipher('What a string!', 5)
caeser_cipher('Bmfy f xywnsl!', -5)