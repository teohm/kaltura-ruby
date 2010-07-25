module Kaltura
  module Service
    class UploadService < BaseService

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('upload','upload',kparams,false)
  		end

  		def get_uploaded_file_token_by_file_name(file_name)
  			kparams = {}
  			client.add_param(kparams, 'fileName', file_name)
  			perform_request('upload','getUploadedFileTokenByFileName',kparams,false)
  		end
  	end #class UploadService
	end
end