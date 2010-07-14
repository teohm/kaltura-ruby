

module Kaltura
  module Service
    
  	class BaseService
  		attr_accessor :client

  		def initialize(client)
  			@client = client
  		end
  	end #class BaseService
  	    
    class AccessControlService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(access_control)
  			kparams = {}
  			client.add_param(kparams, 'accessControl', access_control);
  			client.queue_service_action_call('accessControl', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('accessControl', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, access_control)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'accessControl', access_control);
  			client.queue_service_action_call('accessControl', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('accessControl', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('accessControl', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class AccessControlService
  	
  	class AdminUserService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def update_password(email, password, new_email='', new_password='')
  			kparams = {}
  			client.add_param(kparams, 'email', email);
  			client.add_param(kparams, 'password', password);
  			client.add_param(kparams, 'newEmail', new_email);
  			client.add_param(kparams, 'newPassword', new_password);
  			client.queue_service_action_call('adminUser', 'updatePassword', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def reset_password(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email);
  			client.queue_service_action_call('adminUser', 'resetPassword', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def login(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email);
  			client.add_param(kparams, 'password', password);
  			client.queue_service_action_call('adminUser', 'login', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class AdminUserService
  	
  	class BaseEntryService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add_from_uploaded_file(entry, upload_token_id, type=-1)
  			kparams = {}
  			client.add_param(kparams, 'entry', entry);
  			client.add_param(kparams, 'uploadTokenId', upload_token_id);
  			client.add_param(kparams, 'type', type);
  			client.queue_service_action_call('baseEntry', 'addFromUploadedFile', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('baseEntry', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(entry_id, base_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'baseEntry', base_entry);
  			client.queue_service_action_call('baseEntry', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_by_ids(entry_ids)
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids);
  			client.queue_service_action_call('baseEntry', 'getByIds', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('baseEntry', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('baseEntry', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.queue_service_action_call('baseEntry', 'count', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data);
  			client.queue_service_action_call('baseEntry', 'upload', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'fileData', file_data);
  			client.queue_service_action_call('baseEntry', 'updateThumbnailJpeg', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'url', url);
  			client.queue_service_action_call('baseEntry', 'updateThumbnailFromUrl', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'sourceEntryId', source_entry_id);
  			client.add_param(kparams, 'timeOffset', time_offset);
  			client.queue_service_action_call('baseEntry', 'updateThumbnailFromSourceEntry', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag);
  			client.queue_service_action_call('baseEntry', 'flag', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('baseEntry', 'reject', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('baseEntry', 'approve', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('baseEntry', 'listFlags', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'rank', rank);
  			client.queue_service_action_call('baseEntry', 'anonymousRank', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_context_data(entry_id, context_data_params)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'contextDataParams', context_data_params);
  			client.queue_service_action_call('baseEntry', 'getContextData', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class BaseEntryService
  	
  	class BulkUploadService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(conversion_profile_id, csv_file_data)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
  			client.add_param(kparams, 'csvFileData', csv_file_data);
  			client.queue_service_action_call('bulkUpload', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('bulkUpload', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('bulkUpload', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class BulkUploadService
  	
  	class CategoryService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(category)
  			kparams = {}
  			client.add_param(kparams, 'category', category);
  			client.queue_service_action_call('category', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('category', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, category)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'category', category);
  			client.queue_service_action_call('category', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('category', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.queue_service_action_call('category', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class CategoryService
  	
  	class ConversionProfileService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfile', conversion_profile);
  			client.queue_service_action_call('conversionProfile', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('conversionProfile', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, conversion_profile)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'conversionProfile', conversion_profile);
  			client.queue_service_action_call('conversionProfile', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('conversionProfile', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('conversionProfile', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end 
  	end #class ConversionProfileService
  	
  	class DataService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(data_entry)
  			kparams = {}
  			client.add_param(kparams, 'dataEntry', data_entry);
  			client.queue_service_action_call('data', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('data', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(entry_id, document_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'documentEntry', document_entry);
  			client.queue_service_action_call('data', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('data', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('data', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class DataService
  	
  	
  	class EmailIngestionProfileService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(email_ip)
  			kparams = {}
  			client.add_param(kparams, 'EmailIP', email_ip);
  			client.queue_service_action_call('EmailIngestionProfile', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_by_email_address(email_address)
  			kparams = {}
  			client.add_param(kparams, 'emailAddress', email_address);
  			client.queue_service_action_call('EmailIngestionProfile', 'getByEmailAddress', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('EmailIngestionProfile', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, email_ip)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'EmailIP', email_ip);
  			client.queue_service_action_call('EmailIngestionProfile', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('EmailIngestionProfile', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def add_media_entry(media_entry, upload_token_id, email_prof_id, from_address, email_msg_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.add_param(kparams, 'uploadTokenId', upload_token_id);
  			client.add_param(kparams, 'emailProfId', email_prof_id);
  			client.add_param(kparams, 'fromAddress', from_address);
  			client.add_param(kparams, 'emailMsgId', email_msg_id);
  			client.queue_service_action_call('EmailIngestionProfile', 'addMediaEntry', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class EmailIngestionProfileService
  	
  	class FlavorAssetService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('flavorAsset', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('flavorAsset', 'getByEntryId', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_web_playable_by_entry_id(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('flavorAsset', 'getWebPlayableByEntryId', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def convert(entry_id, flavor_params_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
  			client.queue_service_action_call('flavorAsset', 'convert', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def reconvert(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('flavorAsset', 'reconvert', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('flavorAsset', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_download_url(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('flavorAsset', 'getDownloadUrl', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_flavor_assets_with_params(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('flavorAsset', 'getFlavorAssetsWithParams', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class FlavorAssetService
  	  	
  	class FlavorParamsService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'flavorParams', flavor_params);
  			client.queue_service_action_call('flavorParams', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('flavorParams', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, flavor_params)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'flavorParams', flavor_params);
  			client.queue_service_action_call('flavorParams', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('flavorParams', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('flavorParams', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_by_conversion_profile_id(conversion_profile_id)
  			kparams = {}
  			client.add_param(kparams, 'conversionProfileId', conversion_profile_id);
  			client.queue_service_action_call('flavorParams', 'getByConversionProfileId', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class FlavorParamsService
  	
  	class LiveStreamService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry);
  			client.queue_service_action_call('liveStream', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('liveStream', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(entry_id, live_stream_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'liveStreamEntry', live_stream_entry);
  			client.queue_service_action_call('liveStream', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('liveStream', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('liveStream', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_offline_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'fileData', file_data);
  			client.queue_service_action_call('liveStream', 'updateOfflineThumbnailJpeg', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_offline_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'url', url);
  			client.queue_service_action_call('liveStream', 'updateOfflineThumbnailFromUrl', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class LiveStreamService
  	
  	class MediaService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add_from_bulk(media_entry, url, bulk_upload_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.add_param(kparams, 'url', url);
  			client.add_param(kparams, 'bulkUploadId', bulk_upload_id);
  			client.queue_service_action_call('media', 'addFromBulk', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def add_from_url(media_entry, url)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.add_param(kparams, 'url', url);
  			client.queue_service_action_call('media', 'addFromUrl', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def add_from_search_result(media_entry=nil, search_result=nil)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.add_param(kparams, 'searchResult', search_result);
  			client.queue_service_action_call('media', 'addFromSearchResult', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def add_from_uploaded_file(media_entry, upload_token_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.add_param(kparams, 'uploadTokenId', upload_token_id);
  			client.queue_service_action_call('media', 'addFromUploadedFile', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def add_from_recorded_webcam(media_entry, webcam_token_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.add_param(kparams, 'webcamTokenId', webcam_token_id);
  			client.queue_service_action_call('media', 'addFromRecordedWebcam', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('media', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(entry_id, media_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'mediaEntry', media_entry);
  			client.queue_service_action_call('media', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('media', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('media', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.queue_service_action_call('media', 'count', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data);
  			client.queue_service_action_call('media', 'upload', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail(entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'timeOffset', time_offset);
  			client.queue_service_action_call('media', 'updateThumbnail', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail_from_source_entry(entry_id, source_entry_id, time_offset)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'sourceEntryId', source_entry_id);
  			client.add_param(kparams, 'timeOffset', time_offset);
  			client.queue_service_action_call('media', 'updateThumbnailFromSourceEntry', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail_jpeg(entry_id, file_data)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'fileData', file_data);
  			client.queue_service_action_call('media', 'updateThumbnailJpeg', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_thumbnail_from_url(entry_id, url)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'url', url);
  			client.queue_service_action_call('media', 'updateThumbnailFromUrl', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def request_conversion(entry_id, file_format)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'fileFormat', file_format);
  			client.queue_service_action_call('media', 'requestConversion', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def flag(moderation_flag)
  			kparams = {}
  			client.add_param(kparams, 'moderationFlag', moderation_flag);
  			client.queue_service_action_call('media', 'flag', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def reject(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('media', 'reject', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def approve(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('media', 'approve', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list_flags(entry_id, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('media', 'listFlags', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'rank', rank);
  			client.queue_service_action_call('media', 'anonymousRank', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class MediaService
  	
  	class MixingService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(mix_entry)
  			kparams = {}
  			client.add_param(kparams, 'mixEntry', mix_entry);
  			client.queue_service_action_call('mixing', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('mixing', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(entry_id, mix_entry)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'mixEntry', mix_entry);
  			client.queue_service_action_call('mixing', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('mixing', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('mixing', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def count(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.queue_service_action_call('mixing', 'count', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def clone(entry_id)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.queue_service_action_call('mixing', 'clone', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def append_media_entry(mix_entry_id, media_entry_id)
  			kparams = {}
  			client.add_param(kparams, 'mixEntryId', mix_entry_id);
  			client.add_param(kparams, 'mediaEntryId', media_entry_id);
  			client.queue_service_action_call('mixing', 'appendMediaEntry', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def request_flattening(entry_id, file_format, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'fileFormat', file_format);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('mixing', 'requestFlattening', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_mixes_by_media_id(media_entry_id)
  			kparams = {}
  			client.add_param(kparams, 'mediaEntryId', media_entry_id);
  			client.queue_service_action_call('mixing', 'getMixesByMediaId', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_ready_media_entries(mix_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'mixId', mix_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('mixing', 'getReadyMediaEntries', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def anonymous_rank(entry_id, rank)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'rank', rank);
  			client.queue_service_action_call('mixing', 'anonymousRank', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class MixingService
  	
  	class NotificationService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def get_client_notification(entry_id, type)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'type', type);
  			client.queue_service_action_call('notification', 'getClientNotification', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class NotificationService
  	
  	class PartnerService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def register(partner, cms_password='')
  			kparams = {}
  			client.add_param(kparams, 'partner', partner);
  			client.add_param(kparams, 'cmsPassword', cms_password);
  			client.queue_service_action_call('partner', 'register', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(partner, allow_empty=false)
  			kparams = {}
  			client.add_param(kparams, 'partner', partner);
  			client.add_param(kparams, 'allowEmpty', allow_empty);
  			client.queue_service_action_call('partner', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_secrets(partner_id, admin_email, cms_password)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.add_param(kparams, 'adminEmail', admin_email);
  			client.add_param(kparams, 'cmsPassword', cms_password);
  			client.queue_service_action_call('partner', 'getSecrets', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_info()
  			kparams = {}
  			client.queue_service_action_call('partner', 'getInfo', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_usage(year='', month=1, resolution='days')
  			kparams = {}
  			client.add_param(kparams, 'year', year);
  			client.add_param(kparams, 'month', month);
  			client.add_param(kparams, 'resolution', resolution);
  			client.queue_service_action_call('partner', 'getUsage', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class PartnerService
  	
  	class PlaylistService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(playlist, update_stats=false)
  			kparams = {}
  			client.add_param(kparams, 'playlist', playlist);
  			client.add_param(kparams, 'updateStats', update_stats);
  			client.queue_service_action_call('playlist', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('playlist', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, playlist, update_stats=false)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'playlist', playlist);
  			client.add_param(kparams, 'updateStats', update_stats);
  			client.queue_service_action_call('playlist', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('playlist', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('playlist', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def execute(id, detailed='')
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'detailed', detailed);
  			client.queue_service_action_call('playlist', 'execute', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def execute_from_content(playlist_type, playlist_content, detailed='')
  			kparams = {}
  			client.add_param(kparams, 'playlistType', playlist_type);
  			client.add_param(kparams, 'playlistContent', playlist_content);
  			client.add_param(kparams, 'detailed', detailed);
  			client.queue_service_action_call('playlist', 'executeFromContent', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def execute_from_filters(filters, total_results, detailed='')
  			kparams = {}
  			filters.each do |obj|
  				client.add_param(kparams, 'filters', obj);
  			end
  			client.add_param(kparams, 'totalResults', total_results);
  			client.add_param(kparams, 'detailed', detailed);
  			client.queue_service_action_call('playlist', 'executeFromFilters', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_stats_from_content(playlist_type, playlist_content)
  			kparams = {}
  			client.add_param(kparams, 'playlistType', playlist_type);
  			client.add_param(kparams, 'playlistContent', playlist_content);
  			client.queue_service_action_call('playlist', 'getStatsFromContent', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class PlaylistService
  	
  	class SearchService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def search(search, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'search', search);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('search', 'search', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_media_info(search_result)
  			kparams = {}
  			client.add_param(kparams, 'searchResult', search_result);
  			client.queue_service_action_call('search', 'getMediaInfo', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def search_url(media_type, url)
  			kparams = {}
  			client.add_param(kparams, 'mediaType', media_type);
  			client.add_param(kparams, 'url', url);
  			client.queue_service_action_call('search', 'searchUrl', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def external_login(search_source, user_name, password)
  			kparams = {}
  			client.add_param(kparams, 'searchSource', search_source);
  			client.add_param(kparams, 'userName', user_name);
  			client.add_param(kparams, 'password', password);
  			client.queue_service_action_call('search', 'externalLogin', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class SearchService
  	
  	class SessionService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def start(secret, user_id='', type=0, partner_id=-1, expiry=86400, privileges='')
  			kparams = {}
  			client.add_param(kparams, 'secret', secret);
  			client.add_param(kparams, 'userId', user_id);
  			client.add_param(kparams, 'type', type);
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.add_param(kparams, 'expiry', expiry);
  			client.add_param(kparams, 'privileges', privileges);
  			client.queue_service_action_call('session', 'start', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def start_widget_session(widget_id, expiry=86400)
  			kparams = {}
  			client.add_param(kparams, 'widgetId', widget_id);
  			client.add_param(kparams, 'expiry', expiry);
  			client.queue_service_action_call('session', 'startWidgetSession', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class SessionService
  	
  	class StatsService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def collect(event)
  			kparams = {}
  			client.add_param(kparams, 'event', event);
  			client.queue_service_action_call('stats', 'collect', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def kmc_collect(kmc_event)
  			kparams = {}
  			client.add_param(kparams, 'kmcEvent', kmc_event);
  			client.queue_service_action_call('stats', 'kmcCollect', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def report_kce_error(kaltura_ce_error)
  			kparams = {}
  			client.add_param(kparams, 'kalturaCEError', kaltura_ce_error);
  			client.queue_service_action_call('stats', 'reportKceError', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class StatsService
  	
  	class SyndicationFeedService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(syndication_feed)
  			kparams = {}
  			client.add_param(kparams, 'syndicationFeed', syndication_feed);
  			client.queue_service_action_call('syndicationFeed', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('syndicationFeed', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, syndication_feed)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'syndicationFeed', syndication_feed);
  			client.queue_service_action_call('syndicationFeed', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('syndicationFeed', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('syndicationFeed', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_entry_count(feed_id)
  			kparams = {}
  			client.add_param(kparams, 'feedId', feed_id);
  			client.queue_service_action_call('syndicationFeed', 'getEntryCount', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def request_conversion(feed_id)
  			kparams = {}
  			client.add_param(kparams, 'feedId', feed_id);
  			client.queue_service_action_call('syndicationFeed', 'requestConversion', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class SyndicationFeedService
  	
  	class KalturaSystemService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def ping()
  			kparams = {}
  			client.queue_service_action_call('system', 'ping', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end

  	class UiConfService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(ui_conf)
  			kparams = {}
  			client.add_param(kparams, 'uiConf', ui_conf);
  			client.queue_service_action_call('uiConf', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, ui_conf)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'uiConf', ui_conf);
  			client.queue_service_action_call('uiConf', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('uiConf', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('uiConf', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def clone(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('uiConf', 'clone', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list_templates(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('uiConf', 'listTemplates', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('uiConf', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class UiConfService
  	
  	class UploadService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def upload(file_data)
  			kparams = {}
  			client.add_param(kparams, 'fileData', file_data);
  			client.queue_service_action_call('upload', 'upload', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_uploaded_file_token_by_file_name(file_name)
  			kparams = {}
  			client.add_param(kparams, 'fileName', file_name);
  			client.queue_service_action_call('upload', 'getUploadedFileTokenByFileName', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class UploadService
  	
  	class UserService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(user)
  			kparams = {}
  			client.add_param(kparams, 'user', user);
  			client.queue_service_action_call('user', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(user_id, user)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.add_param(kparams, 'user', user);
  			client.queue_service_action_call('user', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.queue_service_action_call('user', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.queue_service_action_call('user', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('user', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def notify_ban(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.queue_service_action_call('user', 'notifyBan', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class UserService
  	
  	class WidgetService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def add(widget)
  			kparams = {}
  			client.add_param(kparams, 'widget', widget);
  			client.queue_service_action_call('widget', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(id, widget)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.add_param(kparams, 'widget', widget);
  			client.queue_service_action_call('widget', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id);
  			client.queue_service_action_call('widget', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def clone(widget)
  			kparams = {}
  			client.add_param(kparams, 'widget', widget);
  			client.queue_service_action_call('widget', 'clone', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('widget', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class WidgetService
  	
  	class XInternalService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def x_add_bulk_download(entry_ids, flavor_params_id='')
  			kparams = {}
  			client.add_param(kparams, 'entryIds', entry_ids);
  			client.add_param(kparams, 'flavorParamsId', flavor_params_id);
  			client.queue_service_action_call('xInternal', 'xAddBulkDownload', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class XInternalService
  	
  	class SystemUserService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def verify_password(email, password)
  			kparams = {}
  			client.add_param(kparams, 'email', email);
  			client.add_param(kparams, 'password', password);
  			client.queue_service_action_call('systemUser', 'verifyPassword', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def generate_new_password()
  			kparams = {}
  			client.queue_service_action_call('systemUser', 'generateNewPassword', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def set_new_password(user_id, password)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.add_param(kparams, 'password', password);
  			client.queue_service_action_call('systemUser', 'setNewPassword', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def add(system_user)
  			kparams = {}
  			client.add_param(kparams, 'systemUser', system_user);
  			client.queue_service_action_call('systemUser', 'add', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.queue_service_action_call('systemUser', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_by_email(email)
  			kparams = {}
  			client.add_param(kparams, 'email', email);
  			client.queue_service_action_call('systemUser', 'getByEmail', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update(user_id, system_user)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.add_param(kparams, 'systemUser', system_user);
  			client.queue_service_action_call('systemUser', 'update', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def delete(user_id)
  			kparams = {}
  			client.add_param(kparams, 'userId', user_id);
  			client.queue_service_action_call('systemUser', 'delete', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('systemUser', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class SystemUserService
  	
  	class SystemPartnerService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def get(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.queue_service_action_call('systemPartner', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_usage(partner_filter=nil, usage_filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'partnerFilter', partner_filter);
  			client.add_param(kparams, 'usageFilter', usage_filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('systemPartner', 'getUsage', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('systemPartner', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_status(partner_id, status)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.add_param(kparams, 'status', status);
  			client.queue_service_action_call('systemPartner', 'updateStatus', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_admin_session(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.queue_service_action_call('systemPartner', 'getAdminSession', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def update_configuration(partner_id, configuration)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.add_param(kparams, 'configuration', configuration);
  			client.queue_service_action_call('systemPartner', 'updateConfiguration', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_configuration(partner_id)
  			kparams = {}
  			client.add_param(kparams, 'partnerId', partner_id);
  			client.queue_service_action_call('systemPartner', 'getConfiguration', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end

  		def get_packages()
  			kparams = {}
  			client.queue_service_action_call('systemPartner', 'getPackages', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class SystemPartnerService
  	
  	class FileSyncService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('fileSync', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class FileSyncService
  	
  	class FlavorParamsOutputService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('flavorParamsOutput', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class FlavorParamsOutputService
  	
  	class MediaInfoService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def list(filter=nil, pager=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter);
  			client.add_param(kparams, 'pager', pager);
  			client.queue_service_action_call('mediaInfo', 'list', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class MediaInfoService
  	
  	class EntryAdminService < BaseService
  		def initialize(client)
  			super(client)
  		end

  		def get(entry_id, version=-1)
  			kparams = {}
  			client.add_param(kparams, 'entryId', entry_id);
  			client.add_param(kparams, 'version', version);
  			client.queue_service_action_call('entryAdmin', 'get', kparams);
  			if (client.is_multirequest)
  				return nil;
  			end
  			return client.do_queue();
  		end
  	end #class EntryAdminService
  end #module Service
end #module Kaltura