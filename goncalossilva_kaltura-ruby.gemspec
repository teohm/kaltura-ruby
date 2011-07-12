# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{goncalossilva_kaltura-ruby}
  s.version = "0.4.8.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Patrick Robertson"]
  s.date = %q{2010-11-05}
  s.email = %q{patrick.robertson@velir.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.markdown",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "VERSION.yml",
     "lib/kaltura.rb",
     "lib/kaltura/constants.rb",
     "lib/kaltura/constants/access_control_order_by.rb",
     "lib/kaltura/constants/audio_codec.rb",
     "lib/kaltura/constants/base.rb",
     "lib/kaltura/constants/batch_job.rb",
     "lib/kaltura/constants/bit_rate_mode.rb",
     "lib/kaltura/constants/category_order_by.rb",
     "lib/kaltura/constants/commercial_use_type.rb",
     "lib/kaltura/constants/container_format.rb",
     "lib/kaltura/constants/control_panel_command.rb",
     "lib/kaltura/constants/conversion_profile_order_by.rb",
     "lib/kaltura/constants/country_restriction_type.rb",
     "lib/kaltura/constants/data_entry_order_by.rb",
     "lib/kaltura/constants/directory_restriction_type.rb",
     "lib/kaltura/constants/document.rb",
     "lib/kaltura/constants/duration_type.rb",
     "lib/kaltura/constants/editor_type.rb",
     "lib/kaltura/constants/email_ingestion_profile_status.rb",
     "lib/kaltura/constants/entry.rb",
     "lib/kaltura/constants/file_sync.rb",
     "lib/kaltura/constants/flavor_asset_status.rb",
     "lib/kaltura/constants/gender.rb",
     "lib/kaltura/constants/google_syndication_feed.rb",
     "lib/kaltura/constants/i_tunes_syndication_feed.rb",
     "lib/kaltura/constants/i_tunes_syndication_feed/categories.rb",
     "lib/kaltura/constants/license_type.rb",
     "lib/kaltura/constants/live_stream_admin_entry_order_by.rb",
     "lib/kaltura/constants/mail_job_order_by.rb",
     "lib/kaltura/constants/media.rb",
     "lib/kaltura/constants/mix_entry_order_by.rb",
     "lib/kaltura/constants/moderation.rb",
     "lib/kaltura/constants/notification.rb",
     "lib/kaltura/constants/nullable_boolean.rb",
     "lib/kaltura/constants/partner.rb",
     "lib/kaltura/constants/playable_entry_order_by.rb",
     "lib/kaltura/constants/playlist.rb",
     "lib/kaltura/constants/report_type.rb",
     "lib/kaltura/constants/search_provider_type.rb",
     "lib/kaltura/constants/session_type.rb",
     "lib/kaltura/constants/site_restriction_type.rb",
     "lib/kaltura/constants/source_type.rb",
     "lib/kaltura/constants/stats.rb",
     "lib/kaltura/constants/stats/kmc_event_type.rb",
     "lib/kaltura/constants/syndication_feed.rb",
     "lib/kaltura/constants/system_user.rb",
     "lib/kaltura/constants/tube_mogul_syndication_feed.rb",
     "lib/kaltura/constants/ui_conf.rb",
     "lib/kaltura/constants/upload_error_code.rb",
     "lib/kaltura/constants/user.rb",
     "lib/kaltura/constants/video_codec.rb",
     "lib/kaltura/constants/widget.rb",
     "lib/kaltura/constants/yahoo_syndication_feed.rb",
     "lib/kaltura/filter.rb",
     "lib/kaltura/filter/access_control_filter.rb",
     "lib/kaltura/filter/base_entry_filter.rb",
     "lib/kaltura/filter/base_filter.rb",
     "lib/kaltura/filter/base_job_filter.rb",
     "lib/kaltura/filter/batch_job_filter.rb",
     "lib/kaltura/filter/category_filter.rb",
     "lib/kaltura/filter/control_panel_command_filter.rb",
     "lib/kaltura/filter/conversion_profile_filter.rb",
     "lib/kaltura/filter/document_entry_filter.rb",
     "lib/kaltura/filter/file_sync_filter.rb",
     "lib/kaltura/filter/flavor_params_filter.rb",
     "lib/kaltura/filter/flavor_params_output_filter.rb",
     "lib/kaltura/filter/media_entry_filter.rb",
     "lib/kaltura/filter/media_entry_filter_for_playlist.rb",
     "lib/kaltura/filter/partner_filter.rb",
     "lib/kaltura/filter/playable_entry_filter.rb",
     "lib/kaltura/filter/report_input_filter.rb",
     "lib/kaltura/filter/system_partner_usage_filter.rb",
     "lib/kaltura/filter/ui_conf_filter.rb",
     "lib/kaltura/filter/user_filter.rb",
     "lib/kaltura/filter/widget_filter.rb",
     "lib/kaltura/kaltura_client.rb",
     "lib/kaltura/kaltura_client_base.rb",
     "lib/kaltura/response.rb",
     "lib/kaltura/service.rb",
     "lib/kaltura/service/access_control_service.rb",
     "lib/kaltura/service/admin_user_service.rb",
     "lib/kaltura/service/base_entry_service.rb",
     "lib/kaltura/service/base_service.rb",
     "lib/kaltura/service/bulk_upload_service.rb",
     "lib/kaltura/service/category_service.rb",
     "lib/kaltura/service/conversion_profile_service.rb",
     "lib/kaltura/service/data_service.rb",
     "lib/kaltura/service/email_ingestion_profile_service.rb",
     "lib/kaltura/service/flavor_asset_service.rb",
     "lib/kaltura/service/flavor_params_service.rb",
     "lib/kaltura/service/live_stream_service.rb",
     "lib/kaltura/service/media_service.rb",
     "lib/kaltura/service/mixing_service.rb",
     "lib/kaltura/service/notification_service.rb",
     "lib/kaltura/service/partner_service.rb",
     "lib/kaltura/service/playlist_service.rb",
     "lib/kaltura/service/report_service.rb",
     "lib/kaltura/service/search_service.rb",
     "lib/kaltura/service/session_service.rb",
     "lib/kaltura/service/stats_service.rb",
     "lib/kaltura/service/syndication_feed_service.rb",
     "lib/kaltura/service/system_partner_service.rb",
     "lib/kaltura/service/system_service.rb",
     "lib/kaltura/service/system_user_service.rb",
     "lib/kaltura/service/ui_conf_service.rb",
     "lib/kaltura/service/upload_service.rb",
     "lib/kaltura/service/user_service.rb",
     "lib/kaltura/service/widget_service.rb",
     "lib/kaltura/service/x_internal_service.rb",
     "test/kaltura-ruby_test.rb",
     "test/test.rb",
     "test/test_2.rb",
     "test/test_error.rb",
     "test/test_helper.rb",
     "goncalossilva_kaltura-ruby.gemspec"
  ]
  s.homepage = %q{http://github.com/goncalossilva/kaltura-ruby}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Ruby gem for accessing the Kaltura API}
  s.test_files = [
    "test/kaltura-ruby_test.rb",
     "test/test.rb",
     "test/test_2.rb",
     "test/test_error.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activesupport>, [">= 2.3.8"])
      s.add_runtime_dependency(%q<activeresource>, [">= 2.3.8"])
      s.add_runtime_dependency(%q<json>, [">= 0"])
      s.add_runtime_dependency(%q<rest-client>, [">= 1.5.1"])
    else
      s.add_dependency(%q<activesupport>, [">= 2.3.8"])
      s.add_dependency(%q<activeresource>, [">= 2.3.8"])
      s.add_dependency(%q<json>, [">= 0"])
      s.add_dependency(%q<rest-client>, [">= 1.5.1"])
    end
  else
    s.add_dependency(%q<activesupport>, [">= 2.3.8"])
    s.add_dependency(%q<activeresource>, [">= 2.3.8"])
    s.add_dependency(%q<json>, [">= 0"])
    s.add_dependency(%q<rest-client>, [">= 1.5.1"])
  end
end

