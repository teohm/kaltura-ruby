module Kaltura
  module Filter
    class SystemPartnerUsageFilter < BaseFilter
  		attr_accessor :from_date
  		attr_accessor :to_date

  		def from_date=(val)
  			@from_date = val.to_i
  		end
  		def to_date=(val)
  			@to_date = val.to_i
  		end
  	end
	end
end