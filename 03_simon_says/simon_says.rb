def echo input
	return input
end


def shout input
	return input.upcase
end

def repeat input, x = 2
	return ([input] * x).join " "
end

def start_of_word input, x
	return input[0..x-1]
end

def first_word input
	spl = input.split ' '
	return spl[0]
end

def titleize input
	a = input.split
	c = ''
	while a.length > 0
		b = a[0].downcase
		if b == 'and' or b == 'the' or b == 'over'
			c = c + ' ' + b
		else
			c = c + ' ' + b.capitalize
		end
		a.shift
	end
	d = c.split
	d[0] = d[0].capitalize
	d = d.join ' '
	return d
end
