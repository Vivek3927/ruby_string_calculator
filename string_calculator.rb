# String calculator for add numbers

class StringCalculator
	def add(numbers)
		return 0 if numbers.empty?

		delimiter = /,|\n/
		if numbers.start_with?("//")
			delimiter, numbers = numbers[2..].split("\n", 2)
			delimiter = Regexp.escape(delimiter)
		end
		numbers = numbers.split(/#{delimiter}/).map(&:to_i)
		negatives = numbers.select(&:negative?)
		raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

		numbers.sum
	end
end
