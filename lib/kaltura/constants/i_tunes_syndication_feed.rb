require 'kaltura/constants/i_tunes_syndication_feed/categories'

module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::ITunesSyndicationFeedFilter
    # @see Kaltura::ITunesSyndicationFeed
    ##
    module ITunesSyndicationFeed
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::ITunesSyndicationFeed
      ##
      class AdultValues
    		YES = "yes" #This feed contains adult material.
    		NO = "no" #This feed does not contain adult material.
    		CLEAN = "clean" #This feed has some other value.
    	end
    	##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::ITunesSyndicationFeedFilter
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