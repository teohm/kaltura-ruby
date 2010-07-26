module Kaltura
  module Filter
    class PlayableEntryFilter < BaseEntryFilter
  		attr_accessor :duration_less_than
  		attr_accessor :duration_greater_than
  		attr_accessor :duration_less_than_or_equal
  		attr_accessor :duration_greater_than_or_equal
  		attr_accessor :ms_duration_less_than
  		attr_accessor :ms_duration_greater_than
  		attr_accessor :ms_duration_less_than_or_equal
  		attr_accessor :ms_duration_greater_than_or_equal
  		attr_accessor :duration_type_match_or

  		def duration_less_than=(val)
  			@duration_less_than = val.to_i
  		end
  		def duration_greater_than=(val)
  			@duration_greater_than = val.to_i
  		end
  		def duration_less_than_or_equal=(val)
  			@duration_less_than_or_equal = val.to_i
  		end
  		def duration_greater_than_or_equal=(val)
  			@duration_greater_than_or_equal = val.to_i
  		end
  		def ms_duration_less_than=(val)
  			@ms_duration_less_than = val.to_i
  		end
  		def ms_duration_greater_than=(val)
  			@ms_duration_greater_than = val.to_i
  		end
  		def ms_duration_less_than_or_equal=(val)
  			@ms_duration_less_than_or_equal = val.to_i
  		end
  		def ms_duration_greater_than_or_equal=(val)
  			@ms_duration_greater_than_or_equal = val.to_i
  		end
  	end
	end
end