module Kaltura
  module Filter
    class WidgetFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :source_widget_id_equal
  		attr_accessor :root_widget_id_equal
  		attr_accessor :partner_id_equal
  		attr_accessor :entry_id_equal
  		attr_accessor :ui_conf_id_equal
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :updated_at_greater_than_or_equal
  		attr_accessor :updated_at_less_than_or_equal
  		attr_accessor :partner_data_like

  		def partner_id_equal=(val)
  			@partner_id_equal = val.to_i
  		end
  		def ui_conf_id_equal=(val)
  			@ui_conf_id_equal = val.to_i
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
  	end
	end
end