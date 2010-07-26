module Kaltura
  module Filter
    class ReportInputFilter < ObjectBase
  		attr_accessor :from_date
  		attr_accessor :to_date
  		attr_accessor :keywords
  		attr_accessor :search_in_tags
  		attr_accessor :search_in_admin_tags
  		attr_accessor :categories

  		def from_date=(val)
  			@from_date = val.to_i
  		end
  		def to_date=(val)
  			@to_date = val.to_i
  		end
  		def search_in_tags=(val)
  			@search_in_tags = to_b(val)
  		end
  		def search_in_admin_tags=(val)
  			@search_in_admin_tags = to_b(val)
  		end
  	end
	end
end