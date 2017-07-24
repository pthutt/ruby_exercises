def add x, y
	return x.to_f + y.to_f
end

def subtract x, y
	return x.to_f - y.to_f
end

def sum array
	if array.length == 0
		return 0
	else
		total = 0
		while array.length > 0
			total = total + array.last
			array.pop
		end
		return total
	end
end

def multiply array
	total = 1
	while array.length > 0
		total = total * array.last
		array.pop
	end
	return total

end

def power x, y
	x ** y
end

def factorial x
	if x == 0
		return 1
	else 
		y = x
		z = 1
		while y > 0
			z = z * y
			y = y -1
		end
		return z
	end
end

puts sum([7])