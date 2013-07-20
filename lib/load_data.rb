require 'pry'

class GetData

	attr_accessor :get_data, :data 

	def initialize
		@get_data = []
		@data = []
	end

	def read(file)
		row = 0
		File.open(file, 'r') do |handle|
			handle.each_line do |line|
				column = line.split(";")
				date_time = column[0]
				open = column[1]
				high = column[2]
				low = column[3]
				close = column[4]
				volume = column[5]
				volume = volume.split.join
				@get_data[row] = [date_time, open, high, low, close, volume]
				row += 1
			end
		end
	end

	def populate #reverse the order of the Array so latest one is at index = 0
		row = 0
		@get_data.reverse.each do |value|
			@data[row] = value
			row +=1
		end
	end
end


binding.pry