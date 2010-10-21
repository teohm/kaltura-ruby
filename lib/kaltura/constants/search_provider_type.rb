module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Search
    # @see Kaltura::SearchResult
    ##    
    class SearchProviderType
  		FLICKR = 3 #Flickr search
  		YOUTUBE = 4 #Youtube search
  		MYSPACE = 7 #MySpace search
  		PHOTOBUCKET = 8 #photobucket search
  		JAMENDO = 9 #Jamendo search
  		CCMIXTER = 10 #CCMixer search
  		NYPL = 11 #NYPL search 
  		CURRENT = 12 #Current search
  		MEDIA_COMMONS = 13 #Media Commons search
  		KALTURA = 20 #Kaltura search
  		KALTURA_USER_CLIPS = 21 #Kaltura mix search
  		ARCHIVE_ORG = 22 #Archive.org search
  		KALTURA_PARTNER = 23 #Kaltura partner search
  		METACAFE = 24 #Metacafe search
  		SEARCH_PROXY = 28 #Search proxy
  		PARTNER_SPECIFIC = 100 #partner specific search
  	end
  end
end