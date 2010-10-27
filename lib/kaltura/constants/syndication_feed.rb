module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Service::SyndicationFeedService
    ##    
    module SyndicationFeed
      
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Service::SyndicationFeedService
      ##      
      class Status
    		DELETED = -1 #Deleted Syndication Feed
    		ACTIVE = 1 #Active Syndication Feed
    	end
    	
    	##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::ITunesSyndicationFeedFilter
      # @see Kaltura::Service::SyndicationFeedService
      ##
    	class Type
    		GOOGLE_VIDEO = 1 #GoogleVideoSyndicationFeed
    		YAHOO = 2 #YahooSyndicationFeed
    		ITUNES = 3 #ITunesSyndicationFeed
    		TUBE_MOGUL = 4 #TubeMogulSyndicationFeed
    	end
    end
  end
end