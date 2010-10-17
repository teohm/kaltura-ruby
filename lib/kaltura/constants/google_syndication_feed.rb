module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::GoogleVideoSyndicationFeedFilter
    # @see Kaltura::GoogleVideoSyndicationFeed
    ##    
    module GoogleSyndicationFeed
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::GoogleSyndicationFeed
      ##      
      class AdultValues
    		YES = "Yes" #contains adult videos.
    		NO = "No" #does not contain adult videos.
    	end
    	##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::GoogleVideoSyndicationFeedFilter
      ##
    	class OrderBy
    		PLAYLIST_ID_ASC = "+playlistId" #order by playlist_id ascending.
    		PLAYLIST_ID_DESC = "-playlistId" #order by playlist_id descending.
    		NAME_ASC = "+name" #order by name ascending.
    		NAME_DESC = "-name" #order by name descending.
    		TYPE_ASC = "+type" #order by type ascending.
    		TYPE_DESC = "-type" #order by type descending.
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
    	end
    end
  end
end