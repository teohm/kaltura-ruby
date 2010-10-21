module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::MediaEntry
    ##    
    class SourceType
  		FILE = 1 #Sourced by a file
  		WEBCAM = 2 #Sourced from a webcam recording
  		URL = 5 #Sourced by an external URL
  		SEARCH_PROVIDER = 6 #Sourced by a website search.
  		AKAMAI_LIVE = 29 #Sourced from Akamai.
  	end
  end
end