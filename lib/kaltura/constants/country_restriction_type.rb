module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Service::BaseEntryService
    # @see Kaltura::EntryContextDataResult
    # @see Kaltura::EntryContextDataParams
    ##    
    class CountryRestrictionType
  		RESTRICT_COUNTRY_LIST = 0 #restrict countries.
  		ALLOW_COUNTRY_LIST = 1 #allow countries.
  	end
  end
end