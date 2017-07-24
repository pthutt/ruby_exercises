class Book 

	attr_reader :title

	def title=(str)
		@title = str.split
		if @title.length <= 1
			@title = title.join ' '
			@title = title.capitalize
		else
			a = @title
			c = ''
			b = a[0].capitalize
			c = b
			a.shift
			while a.length > 0
				b = a[0]
				if b != 'and' and b != 'the' and b != 'in' and b != 'of' and b != 'a' and b != 'an'
					b = b.capitalize
					c = c + ' ' + b
				else
					c = c + ' ' + b
				end
				a.shift
			end
			c = c.split.join ' '
			@title = c
		end
	end


end