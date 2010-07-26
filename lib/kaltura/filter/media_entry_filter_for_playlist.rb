module Kaltura
  module Filter
    class MediaEntryFilterForPlaylist < MediaEntryFilter
  		attr_accessor :limit

  		def limit=(val)
  			@limit = val.to_i
  		end
  	end
	end
end