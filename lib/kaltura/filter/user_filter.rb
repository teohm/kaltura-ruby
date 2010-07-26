module Kaltura
  module Filter
    class UserFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :partner_id_equal
  		attr_accessor :screen_name_like
  		attr_accessor :screen_name_starts_with
  		attr_accessor :email_like
  		attr_accessor :email_starts_with
  		attr_accessor :tags_multi_like_or
  		attr_accessor :tags_multi_like_and
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal

  		def partner_id_equal=(val)
  			@partner_id_equal = val.to_i
  		end
  		def created_at_greater_than_or_equal=(val)
  			@created_at_greater_than_or_equal = val.to_i
  		end
  		def created_at_less_than_or_equal=(val)
  			@created_at_less_than_or_equal = val.to_i
  		end
  	end
	end
end