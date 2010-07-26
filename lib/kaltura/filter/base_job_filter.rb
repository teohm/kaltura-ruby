module Kaltura
  module Filter
    class BaseJobFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_greater_than_or_equal
  		attr_accessor :partner_id_equal
  		attr_accessor :partner_id_in
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def id_greater_than_or_equal=(val)
  			@id_greater_than_or_equal = val.to_i
  		end
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