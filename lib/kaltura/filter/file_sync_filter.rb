module Kaltura
  module Filter
    class FileSyncFilter < BaseFilter
  		attr_accessor :partner_id_equal
  		attr_accessor :object_type_equal
  		attr_accessor :object_type_in
  		attr_accessor :object_id_equal
  		attr_accessor :object_id_in
  		attr_accessor :version_equal
  		attr_accessor :version_in
  		attr_accessor :object_sub_type_equal
  		attr_accessor :object_sub_type_in
  		attr_accessor :dc_equal
  		attr_accessor :dc_in
  		attr_accessor :original_equal
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :updated_at_greater_than_or_equal
  		attr_accessor :updated_at_less_than_or_equal
  		attr_accessor :ready_at_greater_than_or_equal
  		attr_accessor :ready_at_less_than_or_equal
  		attr_accessor :sync_time_greater_than_or_equal
  		attr_accessor :sync_time_less_than_or_equal
  		attr_accessor :status_equal
  		attr_accessor :status_in
  		attr_accessor :file_type_equal
  		attr_accessor :file_type_in
  		attr_accessor :linked_id_equal
  		attr_accessor :link_count_greater_than_or_equal
  		attr_accessor :link_count_less_than_or_equal
  		attr_accessor :file_size_greater_than_or_equal
  		attr_accessor :file_size_less_than_or_equal

  		def partner_id_equal=(val)
  			@partner_id_equal = val.to_i
  		end
  		def object_type_equal=(val)
  			@object_type_equal = val.to_i
  		end
  		def object_sub_type_equal=(val)
  			@object_sub_type_equal = val.to_i
  		end
  		def original_equal=(val)
  			@original_equal = val.to_i
  		end
  		def created_at_greater_than_or_equal=(val)
  			@created_at_greater_than_or_equal = val.to_i
  		end
  		def created_at_less_than_or_equal=(val)
  			@created_at_less_than_or_equal = val.to_i
  		end
  		def updated_at_greater_than_or_equal=(val)
  			@updated_at_greater_than_or_equal = val.to_i
  		end
  		def updated_at_less_than_or_equal=(val)
  			@updated_at_less_than_or_equal = val.to_i
  		end
  		def ready_at_greater_than_or_equal=(val)
  			@ready_at_greater_than_or_equal = val.to_i
  		end
  		def ready_at_less_than_or_equal=(val)
  			@ready_at_less_than_or_equal = val.to_i
  		end
  		def sync_time_greater_than_or_equal=(val)
  			@sync_time_greater_than_or_equal = val.to_i
  		end
  		def sync_time_less_than_or_equal=(val)
  			@sync_time_less_than_or_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  		def file_type_equal=(val)
  			@file_type_equal = val.to_i
  		end
  		def linked_id_equal=(val)
  			@linked_id_equal = val.to_i
  		end
  		def link_count_greater_than_or_equal=(val)
  			@link_count_greater_than_or_equal = val.to_i
  		end
  		def link_count_less_than_or_equal=(val)
  			@link_count_less_than_or_equal = val.to_i
  		end
  		def file_size_greater_than_or_equal=(val)
  			@file_size_greater_than_or_equal = val.to_i
  		end
  		def file_size_less_than_or_equal=(val)
  			@file_size_less_than_or_equal = val.to_i
  		end
  	end
	end
end