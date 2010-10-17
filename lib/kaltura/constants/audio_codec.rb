module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    ##
    class AudioCodec
	    NONE = "" #invalid audio codec
	    MP3 = "mp3" # mp3 formatted audio file
	    AAC = "aac" # apple formatted audio file
	    VORBIS = "vorbis" #ogg vorbis formatted audio file
	    WMA = "wma" # windows audio formatted audio file
    end
  end
end