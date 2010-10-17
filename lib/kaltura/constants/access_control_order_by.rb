module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::AccessControlFilter
    ##
	  class AccessControlOrderBy
		  CREATED_AT_ASC = "+createdAt" #Order by Created at ascending for a list of AccessControls
		  CREATED_AT_DESC = "-createdAt" #Order by Created at descending for a list of AccessControls
	  end
  end
end