require 'kaltura/constants/stats/kmc_event_type'

module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::StatsEvent
    # @see Kaltura::KmcEvent
    ##
    module Stats
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::StatsEvent
      ##
      class EventType
    		WIDGET_LOADED = 1 #Widget loaded event.
    		MEDIA_LOADED = 2 #Media loaded event.
    		PLAY = 3 #Play event.
    		PLAY_REACHED_25 = 4 #Player has reached 25% completed event.
    		PLAY_REACHED_50 = 5 #Player has reached 50% completed event.
    		PLAY_REACHED_75 = 6 #Player has reached 75% completed event.
    		PLAY_REACHED_100 = 7 #Player has reached 100% completed event.
    		OPEN_EDIT = 8 #Editor has been opened event.
    		OPEN_VIRAL = 9 #Share button has been clicked.
    		OPEN_DOWNLOAD = 10 #Download button has been clicked.
    		OPEN_REPORT = 11 #Report has been generated.
    		BUFFER_START = 12 #The player has started buffering.
    		BUFFER_END = 13 #The player has ended buffering.
    		OPEN_FULL_SCREEN = 14 #The fullscreen button has been clicked.
    		CLOSE_FULL_SCREEN = 15 #The fullscreen window has been closed.
    		REPLAY = 16 #The replay button has been clicked.
    		SEEK = 17 #A seek event has fired.
    		OPEN_UPLOAD = 18 #A KSU/KCW upload has begun.
    		SAVE_PUBLISH = 19 #A KCW/KAE/KSE clip has been saved.
    		CLOSE_EDITOR = 20 #A KCW/KAE/KSE clip has been saved.
    		PRE_BUMPER_PLAYED = 21 #The ad at the start of the video has played
    		POST_BUMPER_PLAYED = 22 #The ad at the end of the video has been played.
    		BUMPER_CLICKED = 23 #The ad was clicked.
    		FUTURE_USE_1 = 24 #When unicorns rule the earth.
    		FUTURE_USE_2 = 25 #Reserved for when twitter gains sentience.
    		FUTURE_USE_3 = 26 #Unsure.
    	end
    end
  end
end