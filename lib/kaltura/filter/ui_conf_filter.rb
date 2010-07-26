module Kaltura
  module Filter
    class UiConfFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :name_like
  		attr_accessor :obj_type_equal
  		attr_accessor :tags_multi_like_or
  		attr_accessor :tags_multi_like_and
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :updated_at_greater_than_or_equal
  		attr_accessor :updated_at_less_than_or_equal
  		attr_accessor :creation_mode_equal
  		attr_accessor :creation_mode_in

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def obj_type_equal=(val)
  			@obj_type_equal = val.to_i
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
  		def creation_mode_equal=(val)
  			@creation_mode_equal = val.to_i
  		end
  	end
	end
end