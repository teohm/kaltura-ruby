module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::ReportGraph
    # @see Kaltura::ReportInputFilter
    # @see Kaltura::ReportTable
    # @see Kaltura::ReportTotal
    # @see Kaltura::ReportType
    ##
    class ReportType
  		TOP_CONTENT = 1 #Top content report
  		CONTENT_DROPOFF = 2 #content drop-off report
  		CONTENT_INTERACTIONS = 3 #content interactions report
  		MAP_OVERLAY = 4 #map overlay report
  		TOP_CONTRIBUTORS = 5 #top contributors report
  		TOP_SYNDICATION = 6 #top syndication report
  		CONTENT_CONTRIBUTIONS = 7 #content contributions report
  		ADMIN_CONSOLE = 10 #admin console report
  	end
  end
end