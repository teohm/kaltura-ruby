module Kaltura
  module Filter
    class DocumentEntryFilter < BaseEntryFilter
  		attr_accessor :document_type_equal
  		attr_accessor :document_type_in

  		def document_type_equal=(val)
  			@document_type_equal = val.to_i
  		end
  	end
	end
end