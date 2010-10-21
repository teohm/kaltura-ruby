module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::SiteRestriction
    ##    
    class SiteRestrictionType
  		RESTRICT_SITE_LIST = 0 #Site white list
  		ALLOW_SITE_LIST = 1 #Site black list
  	end
  end
end