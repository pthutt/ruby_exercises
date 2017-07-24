class Timer

	attr_accessor :seconds, :time_string

	def initialize
		@seconds = 0
		@time_string = "00:00:00"
	end

	def time_string
		ones = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
		tens = [0, 1, 2, 3, 4, 5]
		a = @seconds
		if @seconds == 0
			@time_string = "00:00:00"
		elsif a / 3600 >=1
			b = a / 3600
			a = a - b * 3600
			b = sprintf '%02d', b
			@time_string = b.to_s + ':'
			if a / 60 >= 1
				b = a /60
				a = a - b * 60
				b = sprintf '%02d', b
				@time_string = @time_string + b.to_s + ':'
				if a > 0
					a = sprintf '%02d', a
					@time_string = @time_string + a.to_s
				else
					@time_string = @time_string + '00'
				end
			else
				b = a / 10
				a = a - b * 10
				@time_string = @time_string + '00:00'
			end
			
		elsif a / 60 >= 1
			b = a / 60
			a = a - b * 60
			b = sprintf '%02d', b
			@time_string = "00:" + b.to_s + ':'
			if a > 0
				a = sprintf '%02d', a
				@time_string = @time_string + a.to_s
			else
				@time_string = @time_string + '00'
			end
		else 
			b = @seconds / 10
			a = @seconds - b * 10
			@time_string = "00:00:" + b.to_s + a.to_s
		end
	end

end


