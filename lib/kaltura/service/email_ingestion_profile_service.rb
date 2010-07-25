module Kaltura
  module Service
    class EmailIngestionProfileService < BaseService

  		def add(email_ip)
  			kparams = {}
  			client.add_param(kparams, 'EmailIP', email_ip)
  			perform_request('EmailIngestionProfile','add',kparams,false)
  		end

  		def get_by_email_address(email_address)
  			kparams = {}
  			client.add_param(kparams, 'emailAddress', email_address)
  			perform_request('EmailIngestionProfile','getByEmailAddress',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('EmailIngestionProfile','get',kparams,false)
  		end

  		def update(id, email_ip)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'EmailIP', email_ip)
  			perform_request('EmailIngestionProfile','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('EmailIngestionProfile','delete',kparams,false)
  		end

  		def add_media_entry(media_entry, upload_token_id, email_prof_id, from_address, email_msg_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			client.add_param(kparams, 'emailProfId', email_prof_id)
  			client.add_param(kparams, 'fromAddress', from_address)
  			client.add_param(kparams, 'emailMsgId', email_msg_id)
  			perform_request('EmailIngestionProfile','addMediaEntry',kparams,false)
  		end
  	end #class EmailIngestionProfileService
	end
end