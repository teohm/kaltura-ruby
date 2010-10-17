module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::BatchJobFilter
    # @see Kaltura::BulkUpload
    ##
    module BatchJob
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::BatchJobFilter
      ##      
      class OrderBy
    		STATUS_ASC = "+status" #order by status ascending.
    		STATUS_DESC = "-status" #order by status descending.
    		QUEUE_TIME_ASC = "+queueTime" #order by queue time ascending.
    		QUEUE_TIME_DESC = "-queueTime" #order by queue time descending.
    		FINISH_TIME_ASC = "+finishTime" #order by finish time ascending.
    		FINISH_TIME_DESC = "-finishTime" #order by finish time descending.
    		CREATED_AT_ASC = "+createdAt" #order by created at ascending.
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
    		EXECUTION_ATTEMPTS_ASC = "+executionAttempts" #order by execution attempts ascending.
    		EXECUTION_ATTEMPTS_DESC = "-executionAttempts" #order by execution attempts descending.
    	end

      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::BulkUpload
      ##    	
    	class Status
    		PENDING = 0 #pending status
    		QUEUED = 1 #queued status
    		PROCESSING = 2 #processing status
    		PROCESSED = 3 #processed status
    		MOVEFILE = 4 #moving the file status
    		FINISHED = 5 #finished status
    		FAILED = 6 #failed state
    		ABORTED = 7 #aborted state
    		ALMOST_DONE = 8 #nearly completed status
    		RETRY = 9 #retrying status
    		FATAL = 10 #fatal error state
    		DONT_PROCESS = 11 #unable to process state
    	end
    	
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::BulkUpload
      ##
    	class Type
    		CONVERT = 0 #conversion job
    		IMPORT = 1 #importing job
    		DELETE = 2 #deletion job
    		FLATTEN = 3 #flatten job
    		BULKUPLOAD = 4 #bulk upload job
    		DVDCREATOR = 5 #DVD creation job
    		DOWNLOAD = 6 #download job
    		OOCONVERT = 7 #conversion job
    		CONVERT_PROFILE = 10 #conversion profile creation job
    		POSTCONVERT = 11 #post conversion job
    		PULL = 12 #pull request job
    		REMOTE_CONVERT = 13 #remote conversion job
    		EXTRACT_MEDIA = 14 #media extraction job
    		MAIL = 15 #sending mail job
    		NOTIFICATION = 16 #notification job
    		CLEANUP = 17 #cleanup job
    		SCHEDULER_HELPER = 18 #scheduling job
    		BULKDOWNLOAD = 19 #bulk download job
    		DB_CLEANUP = 20 #database cleanup job
    		PROVISION_PROVIDE = 21 #provisioning job
    		CONVERT_COLLECTION = 22 #collection conversion job
    		STORAGE_EXPORT = 23 #storage export job
    		PROVISION_DELETE = 24 #provisioning deletion job
    		STORAGE_DELETE = 25 #storage deletion job
    		EMAIL_INGESTION = 26 #email ingestion job
    		PROJECT = 1000 #project job
    	end
    end
  end
end