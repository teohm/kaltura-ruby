module Kaltura
  module Filter
    class MediaEntryFilter < PlayableEntryFilter
  		attr_accessor :media_type_equal
  		attr_accessor :media_type_in
  		attr_accessor :media_date_greater_than_or_equal
  		attr_accessor :media_date_less_than_or_equal
  		attr_accessor :flavor_params_ids_match_or
  		attr_accessor :flavor_params_ids_match_and

  		def media_type_equal=(val)
  			@media_type_equal = val.to_i
  		end
  		def media_date_greater_than_or_equal=(val)
  			@media_date_greater_than_or_equal = val.to_i
  		end
  		def media_date_less_than_or_equal=(val)
  			@media_date_less_than_or_equal = val.to_i
  		end
  	end
	end
end