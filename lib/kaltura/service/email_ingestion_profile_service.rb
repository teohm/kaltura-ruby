module Kaltura
  module Service
    ##
    # The Email Ingestion Profile Service allows you to manage email ingestion profile records.
    ##
    class EmailIngestionProfileService < BaseService
      
      ##
      # Adds an email ingestion profile to the Kaltura Database.
      #
      # @param [Kaltura::EmailIngestionProfile] email_ip The email ingestion profile to add.
      #
      # @return [Kaltura::EmailIngestionProfile] Returns the email ingestion profile as stored on the DB.
      #   It might be important to store either the email_address or ID fields for later.
      #
      # @raise [Kaltura::APIError] Raises 'EMAIL INGESTION PROFILE EMAIL EXISTS' if there is another profile using
      #   the email address provided.
      ##
  		def add(email_ip)
  			kparams = {}
  			client.add_param(kparams, 'EmailIP', email_ip)
  			perform_request('EmailIngestionProfile','add',kparams,false)
  		end
      
      ##
      # Retrieves an email ingestion profile by the email_address field.
      #
      # @param [String] email_address The email address to find the profile with.
      #
      # @return [Kaltura::EmailIngestionProfile] The requested email ingestion profile.
      #
      # @raise [Kaltura::APIError] Raises 'EMAIL INGESTION PROFILE NOT FOUND' if there isnt a profile with the
      #   email address provided.
      ##
  		def get_by_email_address(email_address)
  			kparams = {}
  			client.add_param(kparams, 'emailAddress', email_address)
  			perform_request('EmailIngestionProfile','getByEmailAddress',kparams,false)
  		end

      ##
      # Retrieves an email ingestion profile by ID.
      #
      # @param [Integer] id The ID of the email ingestion profile to find.
      #
      # @return [Kaltura::EmailIngestionProfile] The requested email ingestion profile.
      #
      # @raise [Kaltura::APIError] Raises 'EMAIL INGESTION PROFILE NOT FOUND' if there isnt a profile with the
      #   email address provided.
      ##
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('EmailIngestionProfile','get',kparams,false)
  		end

      ##
      # Updates an existing email ingestion profile.
      # As with other update API actions it is a best practice to instantiate a new EmailIngestionProfile object
      # and populate the fields with the fields you wish to change of the existing object.
      #
      # @param [Integer] id The ID of the email ingestion profile you wish to update.
      # @param [Kaltura::EmailIngestionProfile] email_ip The newly instantiated email ingestion profile object
      #  with the fields you wish to update.
      #
      # @return [Kaltura::EmailIngestionProfile] Returns the updated object with a new version.
      #
      # @raise [Kaltura::APIError] Raises 'EMAIL INGESTION PROFILE NOT FOUND' if there isnt a profile with the
      #   email address provided.      
      ##
  		def update(id, email_ip)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'EmailIP', email_ip)
  			perform_request('EmailIngestionProfile','update',kparams,false)
  		end

      ##
      # Deletes an email ingestion profile by ID.
      #
      # @param [Integer] id The ID of the email ingestion profile to delete.
      # 
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises 'EMAIL INGESTION PROFILE NOT FOUND' if there isnt a profile with the
      #   email address provided.
      ##
  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('EmailIngestionProfile','delete',kparams,false)
  		end

      ##
      # Adds a Kaltura::MediaEntry from a email ingestion profile.
      # I'm not entirely sure what the aim of this upload action is, rather than 
      # using the media service itself.
      #
      # @param [Kaltura::MediaEntry] media_entry A newly instantiated media entry object that will be created
      #   in the database.
      # @param [String] upload_token_id The upload token provided by the media service's upload action.
      # @param [Integer] email_profile_id The email ingestion profile ID.
      # @param [String] from_address The email address the action is coming from?
      # @param [String] email_msg_id The ID of the email message?
      # 
      # @return [Kaltura::MediaEntry] The newly created media entry as stored in the kaltura database.
      #   It would be beneficial to store the entry_id of this object for later.
      #
      # @raise [Kaltura::APIError] Raises 'UPLOADED_FILE_NOT_FOUND_BY_TOKEN' when the upload token cannot be found.
      ##
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