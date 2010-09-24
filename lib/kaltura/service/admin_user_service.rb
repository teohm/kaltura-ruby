module Kaltura
  module Service
    ##
    # AdminUserService manages details for the administrative KMC user.
    #
    # @example Setting a new Admin password:
    #   client.admin_user_service.update_password('pat@velir.com','OMGWTFPASSWRD',,'PASSWRDBBQ')
    # @example Setting a new Admin password/email:
    #   client.admin_user_service.update_password('pat@velir.com','OMGWTFPASSWRD','patrick@velir.com','PASSWRDBBQ')
    # @example Resetting a admins password:
    #   client.admin_user_service.reset_password('pat@velir.com')
    ##
    class AdminUserService < BaseService
      
      ##
      # Updates the admin password and email.
      #
      # @param [String] email Administrative user email.
      # @param [String] password Current administrative user password.
      # @param [String] new_email
      # 
      # @return [Kaltura::AdminUser] The administrative user updated.
      #
      # @raise [Kaltura::APIError] Returns two additional error messages: INVALID_FIELD_VALUE when a field isn't valid
      #   and ADMIN_KUSER_WRONG_OLD_PASSWORD when the old password is wrong.
      ##
  		def update_password(email, password, new_email='', new_password='')
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			client.add_param(kparams, 'newEmail', new_email)
  			client.add_param(kparams, 'newPassword', new_password)
  			perform_request('adminUser','updatePassword',kparams,false)
  		end

      ##
      # Resets admins user password and sends the new one to the admins' email address.
      #
      # @param [String] email The admin's email address.
      #
      # @return [nil] returns nil.
      # 
      # @raise [Kaltura::APIError] raises default Kaltura errors.
      ##
  		def reset_password(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			perform_request('adminUser','resetPassword',kparams,false)
  		end
      
      ##
      # Gets an admin session using the admin email and password.  This method is used for the KMC login.
      #
      # @param [String] email The admin's email address.
      # @param [String] password The admin's password.
      #
      # @return [String] User session string.
      #
      # @raise [Kaltura::APIError] raises default Kaltura errors in addition to ADMIN_KUSER_NOT_FOUND if the user isn't found.
      ##
  		def login(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			perform_request('adminUser','login',kparams,false)
  		end
  	end #class AdminUserService
	end
end