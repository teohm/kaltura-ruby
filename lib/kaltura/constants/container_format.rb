module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::FlavorAsset
    ##
    class ContainerFormat
  		FLV = "flv" #flash video.
  		MP4 = "mp4" #MPEG-4 video
  		AVI = "avi" #audio video interleave file
  		MOV = "mov" #Apple Quicktime Movie
  		MP3 = "mp3" #mp3 Audio
  		_3GP = "3gp" #3GPP multimedia file
  		OGG = "ogg" #ogg-vorbis video
  		WMV = "wmv" #windows media video
  		ISMV = "ismv" # iMovie file?  Unsure of this one.
  	end
  end
end