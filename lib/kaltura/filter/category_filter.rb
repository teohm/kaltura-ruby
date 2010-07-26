module Kaltura
  module Filter
    class CategoryFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :parent_id_equal
  		attr_accessor :parent_id_in
  		attr_accessor :depth_equal
  		attr_accessor :full_name_equal
  		attr_accessor :full_name_starts_with

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def parent_id_equal=(val)
  			@parent_id_equal = val.to_i
  		end
  		def depth_equal=(val)
  			@depth_equal = val.to_i
  		end
  	end
	end
end