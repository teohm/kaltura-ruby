module Kaltura
  module Filter
    class BaseEntryFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :name_like
  		attr_accessor :name_multi_like_or
  		attr_accessor :name_multi_like_and
  		attr_accessor :name_equal
  		attr_accessor :partner_id_equal
  		attr_accessor :partner_id_in
  		attr_accessor :user_id_equal
  		attr_accessor :tags_like
  		attr_accessor :tags_multi_like_or
  		attr_accessor :tags_multi_like_and
  		attr_accessor :admin_tags_like
  		attr_accessor :admin_tags_multi_like_or
  		attr_accessor :admin_tags_multi_like_and
  		attr_accessor :categories_match_and
  		attr_accessor :categories_match_or
  		attr_accessor :status_equal
  		attr_accessor :status_not_equal
  		attr_accessor :status_in
  		attr_accessor :status_not_in
  		attr_accessor :moderation_status_equal
  		attr_accessor :moderation_status_not_equal
  		attr_accessor :moderation_status_in
  		attr_accessor :moderation_status_not_in
  		attr_accessor :type_equal
  		attr_accessor :type_in
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :group_id_equal
  		attr_accessor :search_text_match_and
  		attr_accessor :search_text_match_or
  		attr_accessor :access_control_id_equal
  		attr_accessor :access_control_id_in
  		attr_accessor :start_date_greater_than_or_equal
  		attr_accessor :start_date_less_than_or_equal
  		attr_accessor :start_date_greater_than_or_equal_or_null
  		attr_accessor :start_date_less_than_or_equal_or_null
  		attr_accessor :end_date_greater_than_or_equal
  		attr_accessor :end_date_less_than_or_equal
  		attr_accessor :end_date_greater_than_or_equal_or_null
  		attr_accessor :end_date_less_than_or_equal_or_null
  		attr_accessor :tags_name_multi_like_or
  		attr_accessor :tags_admin_tags_multi_like_or
  		attr_accessor :tags_admin_tags_name_multi_like_or
  		attr_accessor :tags_name_multi_like_and
  		attr_accessor :tags_admin_tags_multi_like_and
  		attr_accessor :tags_admin_tags_name_multi_like_and

  		def partner_id_equal=(val)
  			@partner_id_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  		def status_not_equal=(val)
  			@status_not_equal = val.to_i
  		end
  		def status_not_in=(val)
  			@status_not_in = val.to_i
  		end
  		def moderation_status_equal=(val)
  			@moderation_status_equal = val.to_i
  		end
  		def moderation_status_not_equal=(val)
  			@moderation_status_not_equal = val.to_i
  		end
  		def moderation_status_not_in=(val)
  			@moderation_status_not_in = val.to_i
  		end
  		def type_equal=(val)
  			@type_equal = val.to_i
  		end
  		def created_at_greater_than_or_equal=(val)
  			@created_at_greater_than_or_equal = val.to_i
  		end
  		def created_at_less_than_or_equal=(val)
  			@created_at_less_than_or_equal = val.to_i
  		end
  		def group_id_equal=(val)
  			@group_id_equal = val.to_i
  		end
  		def access_control_id_equal=(val)
  			@access_control_id_equal = val.to_i
  		end
  		def start_date_greater_than_or_equal=(val)
  			@start_date_greater_than_or_equal = val.to_i
  		end
  		def start_date_less_than_or_equal=(val)
  			@start_date_less_than_or_equal = val.to_i
  		end
  		def start_date_greater_than_or_equal_or_null=(val)
  			@start_date_greater_than_or_equal_or_null = val.to_i
  		end
  		def start_date_less_than_or_equal_or_null=(val)
  			@start_date_less_than_or_equal_or_null = val.to_i
  		end
  		def end_date_greater_than_or_equal=(val)
  			@end_date_greater_than_or_equal = val.to_i
  		end
  		def end_date_less_than_or_equal=(val)
  			@end_date_less_than_or_equal = val.to_i
  		end
  		def end_date_greater_than_or_equal_or_null=(val)
  			@end_date_greater_than_or_equal_or_null = val.to_i
  		end
  		def end_date_less_than_or_equal_or_null=(val)
  			@end_date_less_than_or_equal_or_null = val.to_i
  		end
  	end
	end
end