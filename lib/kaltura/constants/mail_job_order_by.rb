module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::MailJobFilter
    ##
    class MailJobOrderBy
  		CREATED_AT_ASC = "+createdAt" #order by created_at ascending
  		CREATED_AT_DESC = "-createdAt" #order by created_at descending
  		EXECUTION_ATTEMPTS_ASC = "+executionAttempts" #order by execution attempts ascending
  		EXECUTION_ATTEMPTS_DESC = "-executionAttempts" #order by execution attempts descending
  	end
  end
end