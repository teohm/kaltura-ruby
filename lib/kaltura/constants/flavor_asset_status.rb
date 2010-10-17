module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::FlavorAsset
    ##
    class FlavorAssetStatus
  		ERROR = -1 #error state.
  		QUEUED = 0 #queued for conversion.
  		CONVERTING = 1 #converting state.
  		READY = 2 #ready state.
  		DELETED = 3 #deleted state.
  		NOT_APPLICABLE = 4 # N/A
  	end
  end
end