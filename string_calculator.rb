# String calculator for add numbers
require 'byebug'

class StringCalculator
	def add(numbers)
		return 0 if numbers.empty?

		delimiter = /,|\n/
		if numbers.start_with?("//")
			delimiter, numbers = numbers[2..].split("\n", 2)
			delimiter = Regexp.escape(delimiter)
		end
		numbers.split(/#{delimiter}/).map(&:to_i).sum
	end
end
