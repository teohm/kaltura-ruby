include Kaltura

module Kaltura
  module Filter
    class BaseFilter < KalturaObjectBase
  		attr_accessor :order_by
  	end
  	
  	class AccessControlFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def created_at_greater_than_or_equal=(val)
  			@created_at_greater_than_or_equal = val.to_i
  		end
  		def created_at_less_than_or_equal=(val)
  			@created_at_less_than_or_equal = val.to_i
  		end
  	end
  	
  	class BaseEntryFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :name_like
  		attr_accessor :name_multi_like_or
  		attr_accessor :name_multi_like_and
  		attr_accessor :name_equal
  		attr_accessor :partner_id_equal
  		attr_accessor :partner_id_in
  		attr_accessor :user_id_equal
  		attr_accessor :tags_like
  		attr_accessor :tags_multi_like_or
  		attr_accessor :tags_multi_like_and
  		attr_accessor :admin_tags_like
  		attr_accessor :admin_tags_multi_like_or
  		attr_accessor :admin_tags_multi_like_and
  		attr_accessor :categories_match_and
  		attr_accessor :categories_match_or
  		attr_accessor :status_equal
  		attr_accessor :status_not_equal
  		attr_accessor :status_in
  		attr_accessor :status_not_in
  		attr_accessor :moderation_status_equal
  		attr_accessor :moderation_status_not_equal
  		attr_accessor :moderation_status_in
  		attr_accessor :moderation_status_not_in
  		attr_accessor :type_equal
  		attr_accessor :type_in
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :group_id_equal
  		attr_accessor :search_text_match_and
  		attr_accessor :search_text_match_or
  		attr_accessor :access_control_id_equal
  		attr_accessor :access_control_id_in
  		attr_accessor :start_date_greater_than_or_equal
  		attr_accessor :start_date_less_than_or_equal
  		attr_accessor :start_date_greater_than_or_equal_or_null
  		attr_accessor :start_date_less_than_or_equal_or_null
  		attr_accessor :end_date_greater_than_or_equal
  		attr_accessor :end_date_less_than_or_equal
  		attr_accessor :end_date_greater_than_or_equal_or_null
  		attr_accessor :end_date_less_than_or_equal_or_null
  		attr_accessor :tags_name_multi_like_or
  		attr_accessor :tags_admin_tags_multi_like_or
  		attr_accessor :tags_admin_tags_name_multi_like_or
  		attr_accessor :tags_name_multi_like_and
  		attr_accessor :tags_admin_tags_multi_like_and
  		attr_accessor :tags_admin_tags_name_multi_like_and

  		def partner_id_equal=(val)
  			@partner_id_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  		def status_not_equal=(val)
  			@status_not_equal = val.to_i
  		end
  		def status_not_in=(val)
  			@status_not_in = val.to_i
  		end
  		def moderation_status_equal=(val)
  			@moderation_status_equal = val.to_i
  		end
  		def moderation_status_not_equal=(val)
  			@moderation_status_not_equal = val.to_i
  		end
  		def moderation_status_not_in=(val)
  			@moderation_status_not_in = val.to_i
  		end
  		def type_equal=(val)
  			@type_equal = val.to_i
  		end
  		def created_at_greater_than_or_equal=(val)
  			@created_at_greater_than_or_equal = val.to_i
  		end
  		def created_at_less_than_or_equal=(val)
  			@created_at_less_than_or_equal = val.to_i
  		end
  		def group_id_equal=(val)
  			@group_id_equal = val.to_i
  		end
  		def access_control_id_equal=(val)
  			@access_control_id_equal = val.to_i
  		end
  		def start_date_greater_than_or_equal=(val)
  			@start_date_greater_than_or_equal = val.to_i
  		end
  		def start_date_less_than_or_equal=(val)
  			@start_date_less_than_or_equal = val.to_i
  		end
  		def start_date_greater_than_or_equal_or_null=(val)
  			@start_date_greater_than_or_equal_or_null = val.to_i
  		end
  		def start_date_less_than_or_equal_or_null=(val)
  			@start_date_less_than_or_equal_or_null = val.to_i
  		end
  		def end_date_greater_than_or_equal=(val)
  			@end_date_greater_than_or_equal = val.to_i
  		end
  		def end_date_less_than_or_equal=(val)
  			@end_date_less_than_or_equal = val.to_i
  		end
  		def end_date_greater_than_or_equal_or_null=(val)
  			@end_date_greater_than_or_equal_or_null = val.to_i
  		end
  		def end_date_less_than_or_equal_or_null=(val)
  			@end_date_less_than_or_equal_or_null = val.to_i
  		end
  	end
  	
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
  	
  	class ConversionProfileFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  	end
  	
  	class DataEntryFilter < BaseEntryFilter

  	end
  	
  	class FlavorParamsFilter < BaseFilter
  		attr_accessor :is_system_default_equal

  		def is_system_default_equal=(val)
  			@is_system_default_equal = val.to_i
  		end
  	end
  	
  	class PlayableEntryFilter < BaseEntryFilter
  		attr_accessor :duration_less_than
  		attr_accessor :duration_greater_than
  		attr_accessor :duration_less_than_or_equal
  		attr_accessor :duration_greater_than_or_equal
  		attr_accessor :ms_duration_less_than
  		attr_accessor :ms_duration_greater_than
  		attr_accessor :ms_duration_less_than_or_equal
  		attr_accessor :ms_duration_greater_than_or_equal
  		attr_accessor :duration_type_match_or

  		def duration_less_than=(val)
  			@duration_less_than = val.to_i
  		end
  		def duration_greater_than=(val)
  			@duration_greater_than = val.to_i
  		end
  		def duration_less_than_or_equal=(val)
  			@duration_less_than_or_equal = val.to_i
  		end
  		def duration_greater_than_or_equal=(val)
  			@duration_greater_than_or_equal = val.to_i
  		end
  		def ms_duration_less_than=(val)
  			@ms_duration_less_than = val.to_i
  		end
  		def ms_duration_greater_than=(val)
  			@ms_duration_greater_than = val.to_i
  		end
  		def ms_duration_less_than_or_equal=(val)
  			@ms_duration_less_than_or_equal = val.to_i
  		end
  		def ms_duration_greater_than_or_equal=(val)
  			@ms_duration_greater_than_or_equal = val.to_i
  		end
  	end

  	class MediaEntryFilter < PlayableEntryFilter
  		attr_accessor :media_type_equal
  		attr_accessor :media_type_in
  		attr_accessor :media_date_greater_than_or_equal
  		attr_accessor :media_date_less_than_or_equal
  		attr_accessor :flavor_params_ids_match_or
  		attr_accessor :flavor_params_ids_match_and

  		def media_type_equal=(val)
  			@media_type_equal = val.to_i
  		end
  		def media_date_greater_than_or_equal=(val)
  			@media_date_greater_than_or_equal = val.to_i
  		end
  		def media_date_less_than_or_equal=(val)
  			@media_date_less_than_or_equal = val.to_i
  		end
  	end

  	class LiveStreamEntryFilter < MediaEntryFilter

  	end
  	
  	class MixEntryFilter < PlayableEntryFilter

  	end
  	
  	class MediaEntryFilterForPlaylist < MediaEntryFilter
  		attr_accessor :limit

  		def limit=(val)
  			@limit = val.to_i
  		end
  	end
  	
  	class PlaylistFilter < BaseEntryFilter

  	end
  	
  	class ReportInputFilter < KalturaObjectBase
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
  	
  	class BaseSyndicationFeedFilter < BaseFilter

  	end
  	
  	class UiConfFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :name_like
  		attr_accessor :obj_type_equal
  		attr_accessor :tags_multi_like_or
  		attr_accessor :tags_multi_like_and
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :updated_at_greater_than_or_equal
  		attr_accessor :updated_at_less_than_or_equal
  		attr_accessor :creation_mode_equal
  		attr_accessor :creation_mode_in

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def obj_type_equal=(val)
  			@obj_type_equal = val.to_i
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
  		def creation_mode_equal=(val)
  			@creation_mode_equal = val.to_i
  		end
  	end
  	
  	class UserFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :partner_id_equal
  		attr_accessor :screen_name_like
  		attr_accessor :screen_name_starts_with
  		attr_accessor :email_like
  		attr_accessor :email_starts_with
  		attr_accessor :tags_multi_like_or
  		attr_accessor :tags_multi_like_and
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal

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
  	
  	class SystemUserFilter < BaseFilter

  	end
  	
  	class PartnerFilter < BaseFilter
  		attr_accessor :id_equal
  		attr_accessor :id_in
  		attr_accessor :name_like
  		attr_accessor :name_multi_like_or
  		attr_accessor :name_multi_like_and
  		attr_accessor :name_equal
  		attr_accessor :status_equal
  		attr_accessor :status_in
  		attr_accessor :partner_name_description_website_admin_name_admin_email_like

  		def id_equal=(val)
  			@id_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  	end

  	class SystemPartnerUsageFilter < BaseFilter
  		attr_accessor :from_date
  		attr_accessor :to_date

  		def from_date=(val)
  			@from_date = val.to_i
  		end
  		def to_date=(val)
  			@to_date = val.to_i
  		end
  	end
  	
  	class FileSyncFilter < BaseFilter
  		attr_accessor :partner_id_equal
  		attr_accessor :object_type_equal
  		attr_accessor :object_type_in
  		attr_accessor :object_id_equal
  		attr_accessor :object_id_in
  		attr_accessor :version_equal
  		attr_accessor :version_in
  		attr_accessor :object_sub_type_equal
  		attr_accessor :object_sub_type_in
  		attr_accessor :dc_equal
  		attr_accessor :dc_in
  		attr_accessor :original_equal
  		attr_accessor :created_at_greater_than_or_equal
  		attr_accessor :created_at_less_than_or_equal
  		attr_accessor :updated_at_greater_than_or_equal
  		attr_accessor :updated_at_less_than_or_equal
  		attr_accessor :ready_at_greater_than_or_equal
  		attr_accessor :ready_at_less_than_or_equal
  		attr_accessor :sync_time_greater_than_or_equal
  		attr_accessor :sync_time_less_than_or_equal
  		attr_accessor :status_equal
  		attr_accessor :status_in
  		attr_accessor :file_type_equal
  		attr_accessor :file_type_in
  		attr_accessor :linked_id_equal
  		attr_accessor :link_count_greater_than_or_equal
  		attr_accessor :link_count_less_than_or_equal
  		attr_accessor :file_size_greater_than_or_equal
  		attr_accessor :file_size_less_than_or_equal

  		def partner_id_equal=(val)
  			@partner_id_equal = val.to_i
  		end
  		def object_type_equal=(val)
  			@object_type_equal = val.to_i
  		end
  		def object_sub_type_equal=(val)
  			@object_sub_type_equal = val.to_i
  		end
  		def original_equal=(val)
  			@original_equal = val.to_i
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
  		def ready_at_greater_than_or_equal=(val)
  			@ready_at_greater_than_or_equal = val.to_i
  		end
  		def ready_at_less_than_or_equal=(val)
  			@ready_at_less_than_or_equal = val.to_i
  		end
  		def sync_time_greater_than_or_equal=(val)
  			@sync_time_greater_than_or_equal = val.to_i
  		end
  		def sync_time_less_than_or_equal=(val)
  			@sync_time_less_than_or_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  		def file_type_equal=(val)
  			@file_type_equal = val.to_i
  		end
  		def linked_id_equal=(val)
  			@linked_id_equal = val.to_i
  		end
  		def link_count_greater_than_or_equal=(val)
  			@link_count_greater_than_or_equal = val.to_i
  		end
  		def link_count_less_than_or_equal=(val)
  			@link_count_less_than_or_equal = val.to_i
  		end
  		def file_size_greater_than_or_equal=(val)
  			@file_size_greater_than_or_equal = val.to_i
  		end
  		def file_size_less_than_or_equal=(val)
  			@file_size_less_than_or_equal = val.to_i
  		end
  	end
  	
  	class FlavorParamsOutputFilter < FlavorParamsFilter
  		attr_accessor :flavor_params_id_equal
  		attr_accessor :flavor_params_version_equal
  		attr_accessor :flavor_asset_id_equal
  		attr_accessor :flavor_asset_version_equal

  		def flavor_params_id_equal=(val)
  			@flavor_params_id_equal = val.to_i
  		end
  	end
  	
  	class MediaInfoFilter < BaseFilter
  		attr_accessor :flavor_asset_id_equal

  	end
  	
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

  	class BatchJobFilter < BaseJobFilter
  		attr_accessor :entry_id_equal
  		attr_accessor :job_type_equal
  		attr_accessor :job_type_in
  		attr_accessor :job_type_not_in
  		attr_accessor :job_sub_type_equal
  		attr_accessor :job_sub_type_in
  		attr_accessor :on_stress_divert_to_in
  		attr_accessor :status_equal
  		attr_accessor :status_in
  		attr_accessor :work_group_id_in
  		attr_accessor :queue_time_greater_than_or_equal
  		attr_accessor :queue_time_less_than_or_equal
  		attr_accessor :finish_time_greater_than_or_equal
  		attr_accessor :finish_time_less_than_or_equal
  		attr_accessor :err_type_in
  		attr_accessor :file_size_less_than
  		attr_accessor :file_size_greater_than

  		def job_type_equal=(val)
  			@job_type_equal = val.to_i
  		end
  		def job_type_not_in=(val)
  			@job_type_not_in = val.to_i
  		end
  		def job_sub_type_equal=(val)
  			@job_sub_type_equal = val.to_i
  		end
  		def status_equal=(val)
  			@status_equal = val.to_i
  		end
  		def queue_time_greater_than_or_equal=(val)
  			@queue_time_greater_than_or_equal = val.to_i
  		end
  		def queue_time_less_than_or_equal=(val)
  			@queue_time_less_than_or_equal = val.to_i
  		end
  		def finish_time_greater_than_or_equal=(val)
  			@finish_time_greater_than_or_equal = val.to_i
  		end
  		def finish_time_less_than_or_equal=(val)
  			@finish_time_less_than_or_equal = val.to_i
  		end
  		def file_size_less_than=(val)
  			@file_size_less_than = val.to_i
  		end
  		def file_size_greater_than=(val)
  			@file_size_greater_than = val.to_i
  		end
  	end

  	class BatchJobFilterExt < BatchJobFilter
  		attr_accessor :job_type_and_sub_type_in

  	end

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

  	class DocumentEntryFilter < BaseEntryFilter
  		attr_accessor :document_type_equal
  		attr_accessor :document_type_in

  		def document_type_equal=(val)
  			@document_type_equal = val.to_i
  		end
  	end

  	class GoogleVideoSyndicationFeedFilter < BaseSyndicationFeedFilter

  	end

  	class ITunesSyndicationFeedFilter < BaseSyndicationFeedFilter

  	end

  	class LiveStreamAdminEntryFilter < LiveStreamEntryFilter

  	end

  	class MailJobFilter < BaseJobFilter

  	end

  	class NotificationFilter < BaseJobFilter

  	end

  	class TubeMogulSyndicationFeedFilter < BaseSyndicationFeedFilter

  	end

  	class YahooSyndicationFeedFilter < BaseSyndicationFeedFilter

  	end
  end #module Filter
end #module Kaltura