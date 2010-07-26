module Kaltura
  module Filter
    class FlavorParamsOutputFilter < FlavorParamsFilter
  		attr_accessor :flavor_params_id_equal
  		attr_accessor :flavor_params_version_equal
  		attr_accessor :flavor_asset_id_equal
  		attr_accessor :flavor_asset_version_equal

  		def flavor_params_id_equal=(val)
  			@flavor_params_id_equal = val.to_i
  		end
  	end
	end
end