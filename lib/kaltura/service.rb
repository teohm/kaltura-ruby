include Kaltura

module Kaltura
  module Service
    
  	class BaseService
  		attr_accessor :client

  		def initialize(client)
  			@client = client
  		end
  		
  		def perform_request(service_class,service_action,paramters,allow_multirequest=true)
        if allow_multirequest == false && client.is_multirequest
          return nil
        else
          client.queue_service_action_call(service_class,service_action,paramters)
          return client.do_queue
        end
		  end
  	end #class BaseService
  	    
    class AccessControlService < BaseService

  		def add(access_control)
  			kparams = {}
  			client.add_param(kparams, 'accessControl', access_control)
  			perform_request('accessControl','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('accessControl','get',kparams,false)
  		end

  		def update(id, access_control)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'accessControl', access_control)
  			perform_request('accessControl','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('accessControl','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('accessControl','list',kparams,false)
  		end
  	end #class AccessControlService
  	
  	class AdminUserService < BaseService

  		def update_password(email, password, new_email='', new_password='')
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			client.add_param(kparams, 'newEmail', new_email)
  			client.add_param(kparams, 'newPassword', new_password)
  			perform_request('adminUser','updatePassword',kparams,false)
  		end

  		def reset_password(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			perform_request('adminUser','resetPassword',kparams,false)
  		end

  		def login(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			perform_request('adminUser','login',kparams,false)
  		end
  	end #class AdminUserService
  	
  	class BaseEntryService < BaseService

  		def add_from_uploaded_file(entry, upload_token_id, type=-1)
  			kparams = {}
  			client.add_param(kparams, 'entry', entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			client.add_param(kparams, 'type', type)
  			perform_request('baseEntry','addFromUploadedFile',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('baseEntry','get',kparams,false)
  		end

  		def update(entry_id, base_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'baseEntry', base_entry)
  			perform_request('baseEntry','update',kparams,false)
  		end

  		def get_by_ids(entry_ids)
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids)
  			perform_request('baseEntry','getByIds',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('baseEntry','list',kparams,false)
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('baseEntry','count',kparams,false)
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('baseEntry','upload',kparams,false)
  		end

  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('baseEntry','updateThumbnailJpeg',kparams,false)
  		end

  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('baseEntry','updateThumbnailFromUrl',kparams,false)
  		end

  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'sourceEntryId', source_entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('baseEntry','updateThumbnailFromSourceEntry',kparams,false)
  		end

  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag)
  			perform_request('baseEntry','flag',kparams,false)
  		end

  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','reject',kparams,false)
  		end

  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('baseEntry','approve',kparams,false)
  		end

  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('baseEntry','listFlags',kparams,false)
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('baseEntry','anonymousRank',kparams,false)
  		end

  		def get_context_data(entry_id, context_data_params)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'contextDataParams', context_data_params)
  			perform_request('baseEntry','getContextData',kparams,false)
  		end
  	end #class BaseEntryService
  	
  	class BulkUploadService < BaseService

  		def add(conversion_profile_id, csv_file_data)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id)
  			client.add_param(kparams, 'csvFileData', csv_file_data)
  			perform_request('bulkUpload','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('bulkUpload','get',kparams,false)
  		end

  		def list(pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'pager', pager)
  			perform_request('bulkUpload','list',kparams,false)
  		end
  	end #class BulkUploadService
  	
  	class CategoryService < BaseService

  		def add(category)
  			kparams = {}
  			client.add_param(kparams, 'category', category)
  			perform_request('category','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('category','get',kparams,false)
  		end

  		def update(id, category)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'category', category)
  			perform_request('category','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('category','delete',kparams,false)
  		end

  		def list(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('category','list',kparams,false)
  		end
  	end #class CategoryService
  	
  	class ConversionProfileService < BaseService

  		def add(conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfile', conversion_profile)
  			perform_request('conversionProfile','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('conversionProfile','get',kparams,false)
  		end

  		def update(id, conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'conversionProfile', conversion_profile)
  			perform_request('conversionProfile','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('conversionProfile','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('conversionProfile','list',kparams,false)
  		end 
  	end #class ConversionProfileService
  	
  	class DataService < BaseService

  		def add(data_entry)
  			kparams = {}
  			client.add_param(kparams, 'dataEntry', data_entry)
  			perform_request('data','add',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('data','get',kparams,false)
  		end

  		def update(entry_id, document_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'documentEntry', document_entry)
  			perform_request('data','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('data','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('data','list',kparams,false)
  		end
  	end #class DataService
  	
  	
  	class EmailIngestionProfileService < BaseService

  		def add(email_ip)
  			kparams = {}
  			client.add_param(kparams, 'EmailIP', email_ip)
  			perform_request('EmailIngestionProfile','add',kparams,false)
  		end

  		def get_by_email_address(email_address)
  			kparams = {}
  			client.add_param(kparams, 'emailAddress', email_address)
  			perform_request('EmailIngestionProfile','getByEmailAddress',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('EmailIngestionProfile','get',kparams,false)
  		end

  		def update(id, email_ip)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'EmailIP', email_ip)
  			perform_request('EmailIngestionProfile','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('EmailIngestionProfile','delete',kparams,false)
  		end

  		def add_media_entry(media_entry, upload_token_id, email_prof_id, from_address, email_msg_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			client.add_param(kparams, 'emailProfId', email_prof_id)
  			client.add_param(kparams, 'fromAddress', from_address)
  			client.add_param(kparams, 'emailMsgId', email_msg_id)
  			perform_request('EmailIngestionProfile','addMediaEntry',kparams,false)
  		end
  	end #class EmailIngestionProfileService
  	
  	class FlavorAssetService < BaseService

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','get',kparams,false)
  		end

  		def get_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getByEntryId',kparams,false)
  		end

  		def get_web_playable_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getWebPlayableByEntryId',kparams,false)
  		end

  		def convert(entry_id, flavor_params_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id)
  			perform_request('flavorAsset','convert',kparams,false)
  		end

  		def reconvert(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','reconvert',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','delete',kparams,false)
  		end

  		def get_download_url(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorAsset','getDownloadUrl',kparams,false)
  		end

  		def get_flavor_assets_with_params(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('flavorAsset','getFlavorAssetsWithParams',kparams,false)
  		end
  	end #class FlavorAssetService
  	  	
  	class FlavorParamsService < BaseService

  		def add(flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'flavorParams', flavor_params)
  			perform_request('flavorParams','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorParams','get',kparams,false)
  		end

  		def update(id, flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'flavorParams', flavor_params)
  			perform_request('flavorParams','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('flavorParams','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('flavorParams','list',kparams,false)
  		end

  		def get_by_conversion_profile_id(conversion_profile_id)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id)
  			perform_request('flavorParams','getByConversionProfileId',kparams,false)
  		end
  	end #class FlavorParamsService
  	
  	class LiveStreamService < BaseService

  		def add(live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry)
  			perform_request('liveStream','add',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('liveStream','get',kparams,false)
  		end

  		def update(entry_id, live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry)
  			perform_request('liveStream','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('liveStream','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('liveStream','list',kparams,false)
  		end

  		def update_offline_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('liveStream','updateOfflineThumbnailJpeg',kparams,false)
  		end

  		def update_offline_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('liveStream','updateOfflineThumbnailFromUrl',kparams,false)
  		end
  	end #class LiveStreamService
  	
  	class MediaService < BaseService
  	  
  		def add_from_bulk(media_entry, url, bulk_upload_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'url', url)
  			client.add_param(kparams, 'bulkUploadId', bulk_upload_id)
  			perform_request('media','addFromBulk',kparams,false)
  		end

  		def add_from_url(media_entry, url)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'url', url)
  			perform_request('media','addFromUrl',kparams,false)
  		end

  		def add_from_search_result(media_entry=nil, search_result=nil)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'searchResult', search_result)
  			perform_request('media','addFromSearchResult',kparams,false)
  		end

  		def add_from_uploaded_file(media_entry, upload_token_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'uploadTokenId', upload_token_id)
  			perform_request('media','addFromUploadedFile',kparams,false)
  		end

  		def add_from_recorded_webcam(media_entry, webcam_token_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			client.add_param(kparams, 'webcamTokenId', webcam_token_id)
  			perform_request('media','addFromRecordedWebcam',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('media','get',kparams,false)
  		end

  		def update(entry_id, media_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'mediaEntry', media_entry)
  			perform_request('media','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('media','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('media','list',kparams,false)
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('media','count',kparams,false)
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('media','upload',kparams,false)
  		end

  		def update_thumbnail(entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('media','updateThumbnail',kparams,false)
  		end

  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'sourceEntryId', source_entry_id)
  			client.add_param(kparams, 'timeOffset', time_offset)
  			perform_request('media','updateThumbnailFromSourceEntry',kparams,false)
  		end

  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('media','updateThumbnailJpeg',kparams,false)
  		end

  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'url', url)
  			perform_request('media','updateThumbnailFromUrl',kparams,false)
  		end

  		def request_conversion(entry_id, file_format)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileFormat', file_format)
  			perform_request('media','requestConversion',kparams,false)
  		end

  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag)
  			perform_request('media','flag',kparams,false)
  		end

  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('media','request',kparams,false)
  		end

  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('media','approve',kparams,false)
  		end

  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('media','listFlags',kparams,false)
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('media','anonymousRank',kparams,false)
  		end
  	end #class MediaService
  	
  	class MixingService < BaseService

  		def add(mix_entry)
  			kparams = {}
  			client.add_param(kparams, 'mixEntry', mix_entry)
  			perform_request('mixing','add',kparams,false)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('mixing','get',kparams,false)
  		end

  		def update(entry_id, mix_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'mixEntry', mix_entry)
  			perform_request('mixing','update',kparams,false)
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('mixing','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('mixing','list',kparams,false)
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('mixing','count',kparams,false)
  		end

  		def clone(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			perform_request('mixing','clone',kparams,false)
  		end

  		def append_media_entry(mix_entry_id, media_entry_id)
  			kparams = {}
  			client.add_param(kparams, 'mixEntryId', mix_entry_id)
  			client.add_param(kparams, 'mediaEntryId', media_entry_id)
  			perform_request('mixing','appendMediaEntry',kparams,false)
  		end

  		def request_flattening(entry_id, file_format, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'fileFormat', file_format)
  			client.add_param(kparams, 'version', version)
  			perform_request('mixing','requestFlattening',kparams,false)
  		end

  		def get_mixes_by_media_id(media_entry_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntryId', media_entry_id)
  			perform_request('mixing','getMixesByMediaId',kparams,false)
  		end

  		def get_ready_media_entries(mix_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'mixId', mix_id)
  			client.add_param(kparams, 'version', version)
  			perform_request('mixing','getReadyMediaEntries',kparams,false)
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'rank', rank)
  			perform_request('mixing','anonymousRank',kparams,false)
  		end
  	end #class MixingService
  	
  	class NotificationService < BaseService

  		def get_client_notification(entry_id, type)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id)
  			client.add_param(kparams, 'type', type)
  			perform_request('notification','getClientNotification',kparams,false)
  		end
  	end #class NotificationService
  	
  	class PartnerService < BaseService

  		def register(partner, cms_password='')
  			kparams = {}
  			client.add_param(kparams, 'partner', partner)
  			client.add_param(kparams, 'cmsPassword', cms_password)
  			perform_request('partner','register',kparams,false)
  		end

  		def update(partner, allow_empty=false)
  			kparams = {}
  			client.add_param(kparams, 'partner', partner)
  			client.add_param(kparams, 'allowEmpty', allow_empty)
  			perform_request('partner','update',kparams,false)
  		end

  		def get_secrets(partner_id, admin_email, cms_password)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'adminEmail', admin_email)
  			client.add_param(kparams, 'cmsPassword', cms_password)
  			perform_request('partner','getSecrets',kparams,false)
  		end

  		def get_info()
  			kparams = {}
  			perform_request('partner','getInfo',kparams,false)
  		end

  		def get_usage(year='', month=1, resolution='days')
  			kparams = {}
  			client.add_param(kparams, 'year', year)
  			client.add_param(kparams, 'month', month)
  			client.add_param(kparams, 'resolution', resolution)
  			perform_request('partner','getUsage',kparams,false)
  		end
  	end #class PartnerService
  	
  	class PlaylistService < BaseService

  		def add(playlist, update_stats=false)
  			kparams = {}
  			client.add_param(kparams, 'playlist', playlist)
  			client.add_param(kparams, 'updateStats', update_stats)
  			perform_request('playList','add',kparams,false)
  		end

  		def get(id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'version', version)
  			perform_request('playList','get',kparams,false)
  		end

  		def update(id, playlist, update_stats=false)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'playlist', playlist)
  			client.add_param(kparams, 'updateStats', update_stats)
  			perform_request('playList','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('playList','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('playList','list',kparams,false)
  		end

  		def execute(id, detailed='')
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'detailed', detailed)
  			perform_request('playList','execute',kparams,false)
  		end

  		def execute_from_content(playlist_type, playlist_content, detailed='')
  			kparams = {}
  			client.add_param(kparams, 'playlistType', playlist_type)
  			client.add_param(kparams, 'playlistContent', playlist_content)
  			client.add_param(kparams, 'detailed', detailed)
  			perform_request('playList','executeFromContent',kparams,false)
  		end

  		def execute_from_filters(filters, total_results, detailed='')
  			kparams = {}
  			filters.each do |obj|
  				client.add_param(kparams, 'filters', obj)
  			end
  			client.add_param(kparams, 'totalResults', total_results)
  			client.add_param(kparams, 'detailed', detailed)
  			perform_request('playList','executeFromFilters',kparams)
  		end

  		def get_stats_from_content(playlist_type, playlist_content)
  			kparams = {}
  			client.add_param(kparams, 'playlistType', playlist_type)
  			client.add_param(kparams, 'playlistContent', playlist_content)
  			perform_request('playList','getStatsFromContent',kparams,false)
  		end
  	end #class PlaylistService
  	
  	class ReportService < BaseService

  		def get_graphs(report_type, report_input_filter, dimension='', object_ids='')
  			kparams = {}
  			client.add_param(kparams, 'reportType', report_type)
  			client.add_param(kparams, 'reportInputFilter', report_input_filter)
  			client.add_param(kparams, 'dimension', dimension)
  			client.add_param(kparams, 'objectIds', object_ids)
  			perform_requesT('report','getGraphs',kparams,false)
  		end

  		def get_total(report_type, report_input_filter, object_ids='')
  			kparams = {}
  			client.add_param(kparams, 'reportType', report_type)
  			client.add_param(kparams, 'reportInputFilter', report_input_filter)
  			client.add_param(kparams, 'objectIds', object_ids)
  			perform_request('report','getTotal',kparams,false)
  		end

  		def get_table(report_type, report_input_filter, pager, order='', object_ids='')
  			kparams = {}
  			client.add_param(kparams, 'reportType', report_type)
  			client.add_param(kparams, 'reportInputFilter', report_input_filter)
  			client.add_param(kparams, 'pager', pager)
  			client.add_param(kparams, 'order', order)
  			client.add_param(kparams, 'objectIds', object_ids)
  			perform_request('report','getTable',kparams,false)
  		end

  		def get_url_for_report_as_csv(report_title, report_text, headers, report_type, report_input_filter, dimension='', pager=nil, order='', object_ids='')
  			kparams = {}
  			client.add_param(kparams, 'reportTitle', report_title)
  			client.add_param(kparams, 'reportText', report_text)
  			client.add_param(kparams, 'headers', headers)
  			client.add_param(kparams, 'reportType', report_type)
  			client.add_param(kparams, 'reportInputFilter', report_input_filter)
  			client.add_param(kparams, 'dimension', dimension)
  			client.add_param(kparams, 'pager', pager)
  			client.add_param(kparams, 'order', order)
  			client.add_param(kparams, 'objectIds', object_ids)
  			perform_request('report','getUrlForReportAsCsv',kparams,false)
  		end
  	end #class ReportService
  	
  	
  	class SearchService < BaseService

  		def search(search, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'search', search)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('search','search',kparams,false)
  		end

  		def get_media_info(search_result)
  			kparams = {}
  			client.add_param(kparams, 'searchResult', search_result)
  			perform_request('search','getMediaInfo',kparams,false)
  		end

  		def search_url(media_type, url)
  			kparams = {}
  			client.add_param(kparams, 'mediaType', media_type)
  			client.add_param(kparams, 'url', url)
  			perform_request('search','searchUrl',kparams,false)
  		end

  		def external_login(search_source, user_name, password)
  			kparams = {}
  			client.add_param(kparams, 'searchSource', search_source)
  			client.add_param(kparams, 'userName', user_name)
  			client.add_param(kparams, 'password', password)
  			perform_request('search','externalLogin',kparams,false)
  		end
  	end #class SearchService
  	
  	class SessionService < BaseService

  		def start(secret, user_id='', type=0, partner_id=-1, expiry=86400, privileges='')
  			kparams = {}
  			client.add_param(kparams, 'secret', secret)
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'type', type)
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'expiry', expiry)
  			client.add_param(kparams, 'privileges', privileges)
  			perform_request('session','start',kparams,false)
  		end

  		def start_widget_session(widget_id, expiry=86400)
  			kparams = {}
  			client.add_param(kparams, 'widgetId', widget_id)
  			client.add_param(kparams, 'expiry', expiry)
  			perform_request('session','startWidgetSession',kparams,false)
  		end
  	end #class SessionService
  	
  	class StatsService < BaseService

  		def collect(event)
  			kparams = {}
  			client.add_param(kparams, 'event', event)
  			perform_request('stats','collect',kparams,false)
  		end

  		def kmc_collect(kmc_event)
  			kparams = {}
  			client.add_param(kparams, 'kmcEvent', kmc_event)
  			perform_request('stats','kmcCollect',kparams,false)
  		end

  		def report_kce_error(kaltura_ce_error)
  			kparams = {}
  			client.add_param(kparams, 'kalturaCEError', kaltura_ce_error)
  			perform_request('stats','reportKceError',kparams,false)
  		end
  	end #class StatsService
  	
  	class SyndicationFeedService < BaseService

  		def add(syndication_feed)
  			kparams = {}
  			client.add_param(kparams, 'syndicationFeed', syndication_feed)
  			perform_request('syndicationFeed','add',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('syndicationFeed','get',kparams,false)
  		end

  		def update(id, syndication_feed)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'syndicationFeed', syndication_feed)
  			perform_request('syndicationFeed','update',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('syndicationFeed','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('syndicationFeed','list',kparams,false)
  		end

  		def get_entry_count(feed_id)
  			kparams = {}
  			client.add_param(kparams, 'feedId', feed_id)
  			perform_request('syndicationFeed','getEntryCount',kparams,false)
  		end

  		def request_conversion(feed_id)
  			kparams = {}
  			client.add_param(kparams, 'feedId', feed_id)
  			perform_request('syndicationFeed','requestConversion',kparams,false)
  		end
  	end #class SyndicationFeedService
  	
  	class SystemService < BaseService

  		def ping()
  			kparams = {}
  			perform_request('system','ping',kparams,false)
  		end
  	end #class SystemService

  	class UiConfService < BaseService

  		def add(ui_conf)
  			kparams = {}
  			client.add_param(kparams, 'uiConf', ui_conf)
  			perform_request('uiConf','add',kparams,false)
  		end

  		def update(id, ui_conf)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'uiConf', ui_conf)
  			perform_request('uiConf','update',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('uiConf','get',kparams,false)
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('uiConf','delete',kparams,false)
  		end

  		def clone(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('uiConf','clone',kparams,false)
  		end

  		def list_templates(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('uiConf','listTemplates',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('uiConf','list',kparams,false)
  		end
  	end #class UiConfService
  	
  	class UploadService < BaseService

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data)
  			perform_request('upload','upload',kparams,false)
  		end

  		def get_uploaded_file_token_by_file_name(file_name)
  			kparams = {}
  			client.add_param(kparams, 'fileName', file_name)
  			perform_request('upload','getUploadedFileTokenByFileName',kparams,false)
  		end
  	end #class UploadService
  	
  	class UserService < BaseService

  		def add(user)
  			kparams = {}
  			client.add_param(kparams, 'user', user)
  			perform_request('user','add',kparams,false)
  		end

  		def update(user_id, user)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'user', user)
  			perform_request('user','update',kparams,false)
  		end

  		def get(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('user','get',kparams,false)
  		end

  		def delete(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('user','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('user','list',kparams,false)
  		end

  		def notify_ban(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('user','notifyBan',kparams,false)
  		end
  	end #class UserService
  	
  	class WidgetService < BaseService

  		def add(widget)
  			kparams = {}
  			client.add_param(kparams, 'widget', widget)
  			perform_request('widget','add',kparams,false)
  		end

  		def update(id, widget)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'widget', widget)
  			perform_request('widget','update',kparams,false)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('widget','get',kparams,false)
  		end

  		def clone(widget)
  			kparams = {}
  			client.add_param(kparams, 'widget', widget)
  			perform_request('widget','clone',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('widget','list',kparams,false)
  		end
  	end #class WidgetService
  	
  	class XInternalService < BaseService

  		def x_add_bulk_download(entry_ids, flavor_params_id='')
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids)
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id)
  			perform_request('xInternal','xAddBulkDownload',kparams,false)
  		end
  	end #class XInternalService
  	
  	class SystemUserService < BaseService

  		def verify_password(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			client.add_param(kparams, 'password', password)
  			perform_request('systemUser','verifyPassword',kparams,false)
  		end

  		def generate_new_password()
  			kparams = {}
  			perform_request('systemUser','generateNewPassword',kparams,false)
  		end

  		def set_new_password(user_id, password)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'password', password)
  			perform_request('systemUser','setNewPassword',kparams,false)
  		end

  		def add(system_user)
  			kparams = {}
  			client.add_param(kparams, 'systemUser', system_user)
  			perform_request('systemUser','add',kparams,false)
  		end

  		def get(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('systemUser','get',kparams,false)
  		end

  		def get_by_email(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email)
  			perform_request('systemUser','getByEmail',kparams,false)
  		end

  		def update(user_id, system_user)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			client.add_param(kparams, 'systemUser', system_user)
  			perform_request('systemUser','update',kparams,false)
  		end

  		def delete(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id)
  			perform_request('systemUser','delete',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('systemUser','list',kparams,false)
  		end
  	end #class SystemUserService
  	
  	class SystemPartnerService < BaseService

  		def get(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			perform_request('systemPartner','get',kparams,false)
  		end

  		def get_usage(partner_filter=nil, usage_filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'partnerFilter', partner_filter)
  			client.add_param(kparams, 'usageFilter', usage_filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('systemPartner','getUsage',kparams,false)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			client.add_param(kparams, 'pager', pager)
  			perform_request('systemPartner','list',kparams,false)
  		end

  		def update_status(partner_id, status)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'status', status)
  			perform_request('systemPartner','updateStatus',kparams,false)
  		end

  		def get_admin_session(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			perform_request('systemPartner','getAdminSession',kparams,false)
  		end

  		def update_configuration(partner_id, configuration)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			client.add_param(kparams, 'configuration', configuration)
  			perform_request('systemPartner','updateConfiguration',kparams,false)
  		end

  		def get_configuration(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id)
  			perform_request('systemPartner','getConfiguration',kparams,false)
  		end

  		def get_packages()
  			kparams = {}
  			perform_request('systemPartner','getPackages',kparams,false)
  		end
  	end #class SystemPartnerService
  	
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