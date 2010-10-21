module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::PlayableEntryFilter
    ##
    class PlayableEntryOrderBy
  		PLAYS_ASC = "+plays" #order by plays ascending
  		PLAYS_DESC = "-plays" #order by plays descending
  		VIEWS_ASC = "+views" #order by views ascending
  		VIEWS_DESC = "-views" #order by views descending
  		DURATION_ASC = "+duration" #order by duration ascending
  		DURATION_DESC = "-duration" #order by duration descending
  		MS_DURATION_ASC = "+msDuration" #order by millisecond duration ascending
  		MS_DURATION_DESC = "-msDuration" #order by millisecond duration descending
  		NAME_ASC = "+name" #order by name ascending
  		NAME_DESC = "-name" #order by name descending
  		MODERATION_COUNT_ASC = "+moderationCount" #order by moderation count ascending
  		MODERATION_COUNT_DESC = "-moderationCount" #order by moderation count descending
  		CREATED_AT_ASC = "+createdAt" #order by created_at ascending
  		CREATED_AT_DESC = "-createdAt" #order by created_at descending
  		RANK_ASC = "+rank" #order by rank ascending
  		RANK_DESC = "-rank" #order by rank descending
  	end
  end
end