module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::ConversionProfileFilter
    ##    
    class ConversionProfileOrderBy
  		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
  		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
  	end
  end
end