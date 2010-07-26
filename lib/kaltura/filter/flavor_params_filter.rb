module Kaltura
  module Filter
    class FlavorParamsFilter < BaseFilter
  		attr_accessor :is_system_default_equal

  		def is_system_default_equal=(val)
  			@is_system_default_equal = val.to_i
  		end
  	end
	end
end