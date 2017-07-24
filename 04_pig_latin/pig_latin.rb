def translate string
	arr = string.split
	if arr.length > 1
		new_str = ''
		while arr.length >= 1
			word = arr[0]
			if word[0] == 'a' or word[0] == 'e' or word[0] == 'i' or word[0] == 'o'
				new_str = new_str + ' ' + word + 'ay'
			elsif word[1] != 'a' and word[1] != 'i' and word[1] != 'o'
				a = word.split ''
				b = a[0..1]
				a.shift
				a.shift
				a.concat(b)
				a = a.join ''
				a = a + 'ay'
				new_str = new_str + ' ' + a
			else
				a = word.split ''
				b = a[0]
				a.shift
				a.push(b)
				a = a.join ''
				a = a + 'ay'
				new_str = new_str + ' ' + a
			end
			arr.shift
		end
		new_str = new_str.split.join ' '
		return new_str
	else


		if string[0] == 'a'
			return string + 'ay'
		elsif string[0..2] == 'sch'
			a = string.split ''
			b = a[0..2]
			a.shift
			a.shift
			a.shift
			a.concat(b)
			a = a.join ''
			a = a + 'ay'
			return a	
		elsif string[0..1] == 'qu'
			a = string.split ''
			b = a[0..1]
			a.shift
			a.shift
			a.concat(b)
			a = a.join ''
			a = a + 'ay'
			return a
		elsif string[1] != 'a' and string[2] != 'e' and string[2] != 'a'
			a = string.split ''
			b = a[0..2]
			a.shift
			a.shift
			a.shift
			a.concat(b)
			a = a.join ''
			a = a + 'ay'
			return a
		elsif string[1] != 'a'
			a = string.split ''
			b = a[0..1]
			a.shift
			a.shift
			a.concat(b)
			a = a.join ''
			a = a + 'ay'
			return a
		else
			a = string.split ''
			b = a[0]
			a.shift
			a.push(b)
			a = a.join ''
			a = a + 'ay'
			return a
		end
	end
end
