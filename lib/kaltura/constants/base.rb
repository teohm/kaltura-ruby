module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::BaseSyndicationFeedFilter
    # @see Kaltura::Filter::BaseJobFilter
    # @see Kaltura::Filter::BaseEntryFilter
    ##
    module Base
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::BaseSyndicationFeedFilter
      ##    
      class SyndicationFeedOrderBy
    		PLAYLIST_ID_ASC = "+playlistId" #order by playlist ID ascending.
    		PLAYLIST_ID_DESC = "-playlistId" #order by playlist ID descending.
    		NAME_ASC = "+name" #order by name ascending.
    		NAME_DESC = "-name" #order by by name descending.
    		TYPE_ASC = "+type" #order by type ascending.
    		TYPE_DESC = "-type" #order by type descending.
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
    	end
    	
    	
    	##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::BaseJobFilter
      ##
    	class JobOrderBy
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
    		EXECUTION_ATTEMPTS_ASC = "+executionAttempts" #order by execution attempts ascending.
    		EXECUTION_ATTEMPTS_DESC = "-executionAttempts" #order by execution attempts descending.
    	end
    	
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::BaseEntryFilter
      ##
    	class EntryOrderBy
  		  NAME_ASC = "+name" #order by name ascending.
  		  NAME_DESC = "-name" #order by name descending.
  		  MODERATION_COUNT_ASC = "+moderationCount" #order by moderation count ascending.
  		  MODERATION_COUNT_DESC = "-moderationCount" #order by moderation count descending.
  		  CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
  		  CREATED_AT_DESC = "-createdAt" #ordery by created_at descending.
  		  RANK_ASC = "+rank" #order by rank ascending.
  		  RANK_DESC = "-rank" #order by rank descending.
  	  end
    end
  end
end