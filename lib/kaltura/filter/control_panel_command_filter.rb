module Kaltura
  module Filter
    class ControlPanelCommandFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :created_by_id_equal
  		attr_accessor :type_equal
  		attr_accessor :type_in
  		attr_accessor :target_type_equal
  		attr_accessor :target_type_in
  		attr_accessor :status_equal
  		attr_accessor :status_in

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def created_at_greater_than_or_equal=(val)
  			@created_at_greater_than_or_equal = val.to_i
  		end
  		def created_at_less_than_or_equal=(val)
  			@created_at_less_than_or_equal = val.to_i
  		end
  		def created_by_id_equal=(val)
  			@created_by_id_equal = val.to_i
  		end
  		def type_equal=(val)
  			@type_equal = val.to_i
  		end
  		def target_type_equal=(val)
  			@target_type_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  	end
	end
end