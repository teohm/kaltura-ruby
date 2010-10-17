module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::DataEntryFilter
    ##
    class DataEntryOrderBy
  		NAME_ASC = "+name" #order by name ascending.
  		NAME_DESC = "-name" #order by name descending.
  		MODERATION_COUNT_ASC = "+moderationCount" #order by moderation count ascending.
  		MODERATION_COUNT_DESC = "-moderationCount" #order by moderation count descending.
  		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
  		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
  		RANK_ASC = "+rank" #order by rank ascending.
  		RANK_DESC = "-rank" #order by rank descending.
  	end
  end
end