module Kaltura
  module Filter
    class PartnerFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :name_like
  		attr_accessor :name_multi_like_or
  		attr_accessor :name_multi_like_and
  		attr_accessor :name_equal
  		attr_accessor :status_equal
  		attr_accessor :status_in
  		attr_accessor :partner_name_description_website_admin_name_admin_email_like

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  	end
	end
end