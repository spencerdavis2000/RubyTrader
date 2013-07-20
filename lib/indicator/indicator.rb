########################################################################
# Spencer Davis -- author
# July 14, 2013
# Ruby Trader is a Library of Trading Indicators used by stock traders
#                                                        
#                                                              
#######################################################################

module Indicator

	def sma(dataset, period)
		dataset.inject(0) {|sum, x| sum + x}/period.to_f
	end

	def std_dev(dataset, period)
		mean = dataset.inject(0) {|sum,x| sum+x} / period.to_f
		Math.sqrt(dataset.inject(0) {|sum, value| sum + (value - mean)**2} / dataset.size.to_f)
	end

	def bollinger(dataset, period, num_std_dev)
		
	end

end