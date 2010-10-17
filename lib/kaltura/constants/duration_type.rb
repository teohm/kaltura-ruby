module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::PlayableEntryFilter
    ##    
    class DurationType
  		NOT_AVAILABLE = "notavailable" #unavailable duration.
  		SHORT = "short" #short duration.
  		MEDIUM = "medium" #medium duration.
  		LONG = "long" #long duration.
  	end
  end	
end