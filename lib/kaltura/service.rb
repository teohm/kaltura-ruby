require 'kaltura/service/base_service'

require 'kaltura/service/access_control_service'
require 'kaltura/service/admin_user_service'
require 'kaltura/service/base_entry_service'
require 'kaltura/service/bulk_upload_service'
require 'kaltura/service/category_service'
require 'kaltura/service/conversion_profile_service'
require 'kaltura/service/data_service'
require 'kaltura/service/email_ingestion_profile_service'
require 'kaltura/service/flavor_asset_service'
require 'kaltura/service/flavor_params_service'
require 'kaltura/service/live_stream_service'
require 'kaltura/service/media_service'
require 'kaltura/service/mixing_service'
require 'kaltura/service/notification_service'
require 'kaltura/service/partner_service'
require 'kaltura/service/playlist_service'
require 'kaltura/service/report_service'
require 'kaltura/service/search_service'
require 'kaltura/service/session_service'
require 'kaltura/service/stats_service'
require 'kaltura/service/syndication_feed_service'
require 'kaltura/service/system_service'
require 'kaltura/service/ui_conf_service'
require 'kaltura/service/upload_service'
require 'kaltura/service/user_service'
require 'kaltura/service/widget_service'
require 'kaltura/service/x_internal_service'
require 'kaltura/service/system_user_service'
require 'kaltura/service/system_partner_service'

module Kaltura
  module Service
          	  		  		  			  			  		  		  	  	  		  	
  	class FileSyncService < BaseService

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('fileSync','list',kparams,false)
  		end
  	end #class FileSyncService
  	
  	class FlavorParamsOutputService < BaseService

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('flavorParamsOutput','list',kparams,false)
  		end
  	end #class FlavorParamsOutputService
  	
  	class MediaInfoService < BaseService

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('mediaInfo','list',kparams,false)
  		end
  	end #class MediaInfoService
  	
  	class EntryAdminService < BaseService

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('entryAdmin','get',kparams,false)
  		end
  	end #class EntryAdminService
  end #module Service
end #module Kaltura