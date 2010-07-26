module Kaltura
  module Filter
    class ConversionProfileFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  	end
	end
end