module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::BaseEntry
    ##
  	class LicenseType
  		UNKNOWN = -1 #Unknown License
  		NONE = 0 #No license
  		COPYRIGHTED = 1 #Copyrighted License
  		PUBLIC_DOMAIN = 2 #Public Domain
  		CREATIVECOMMONS_ATTRIBUTION = 3 #Creative Commons - Attribution
  		CREATIVECOMMONS_ATTRIBUTION_SHARE_ALIKE = 4 #Creative Commons - Share Alike
  		CREATIVECOMMONS_ATTRIBUTION_NO_DERIVATIVES = 5 #Creative Commons - No Derivitives
  		CREATIVECOMMONS_ATTRIBUTION_NON_COMMERCIAL = 6 #Creative Commons - Non-Commercial
  		CREATIVECOMMONS_ATTRIBUTION_NON_COMMERCIAL_SHARE_ALIKE = 7 #Creative Commons - Non-Commercial Share Alike
  		CREATIVECOMMONS_ATTRIBUTION_NON_COMMERCIAL_NO_DERIVATIVES = 8 #Creative Commons - Non-Commercial No Derivitives
  		GFDL = 9 #GFDL
  		GPL = 10 #Gnu Public License
  		AFFERO_GPL = 11 #Affero Gnu Public License
  		LGPL = 12 #Lesser Gnu Public License
  		BSD = 13 #BSD
  		APACHE = 14 #Apache
  		MOZILLA = 15 #Mozilla
  	end
  end
end