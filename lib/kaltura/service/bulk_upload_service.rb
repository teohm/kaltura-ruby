module Kaltura
  module Service
    ##
    # The Bulk upload service is used to upload and manage bulk uploads using CSV files.
    # This service is available through the KMC and typically would be a one-off, 
    # though you could choose to use it with a web application.
    #
    # @example Create a new bulk upload job:
    #   csv_file = File.open('/path/to/csv_file/')
    #   client.bulk_upload_service.add('12141313',csv_file)
    #
    # @example Retrieve a bulk upload status:
    #   status = client.bulk_upload_service.get('124').status
    #
    # @example List all bulk upload jobs:
    #   pager = Kaltura::FilterPager.new
    #   pager.page_size = 100000000
    #   client.bulk_upload_service.list(pager)
    ##
    class BulkUploadService < BaseService
      
      ##
      # Adds a new bulk upload batch job.
      # The conversion profile ID can be either specified in the API or in the CSV file itself.
      # The attribute in the CSV overrides the API ID.  The partner's default conversion profile 
      # will be used if no ID is provided.
      #
      # @param [Integer] conversion_profile_id This is the conversion profile to create flavors for each entry from.
      #   If there is a conversion profile defined in the file, this paramter will be overriden.
      # @param [File] csv_file_data The CSV file used to batch upload.
      #
      # @return [Kaltura::BulkUpload] A Bulk upload object contains useful information regarding the batch upload status.
      #   It would be advised you store the ID of this object somewhere for later retrieval.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def add(conversion_profile_id, csv_file_data)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id)
  			client.add_param(kparams, 'csvFileData', csv_file_data)
  			perform_request('bulkUpload','add',kparams,false)
  		end

      ##
      # Retrieves a BulkUpload object.
      #
      # @param [Integer] id The ID of the BulkUpload object.
      #
      # @return [Kaltura::BulkUpload] The BulkUpload object requested.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('bulkUpload','get',kparams,false)
  		end

      ##
      # Lists bulk upload batch jobs given a pager index and size.
      #
      # @param [Kaltura::FilterPager] pager Default Kaltura pager object.
      #
      # @return [Kaltura::Response::BulkUploadListResponse] Wrapper for BaseResponse.
      # 
      # @return [Kaltura::APIError] Raises default Kaltura errors.
      ## 
  		def list(pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'pager', pager)
  			perform_request('bulkUpload','list',kparams,false)
  		end
  	end #class BulkUploadService
	end
end