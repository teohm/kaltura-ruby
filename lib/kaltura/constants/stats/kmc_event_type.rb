module Kaltura
  module Constants
    module Stats
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::StatsKmcEvent
      ##
      class KmcEventType
    		CONTENT_PAGE_VIEW = 1001 #A page with a KDP widget is viewed.
    		CONTENT_ADD_PLAYLIST = 1010 #A playable entry is added to a playlist.
    		CONTENT_EDIT_PLAYLIST = 1011 #A playist is edited.
    		CONTENT_DELETE_PLAYLIST = 1012 #Content is removed from a playlist.
    		CONTENT_DELETE_ITEM = 1058 #A property is removed from an entry.
    		CONTENT_EDIT_ENTRY = 1013 #An entry is edited.
    		CONTENT_CHANGE_THUMBNAIL = 1014 #An entry's thumbnail is changed.
    		CONTENT_ADD_TAGS = 1015 #Tags are added to an entry.
    		CONTENT_REMOVE_TAGS = 1016 #Tags are removed from an entry.
    		CONTENT_ADD_ADMIN_TAGS = 1017 #Administrative tags are added to an entry.
    		CONTENT_REMOVE_ADMIN_TAGS = 1018 #Administrative tags are removed from an entry.
    		CONTENT_DOWNLOAD = 1019 #An entry/flavor is downloaded.
    		CONTENT_APPROVE_MODERATION = 1020 #An entry is appproved.
    		CONTENT_REJECT_MODERATION = 1021 #An entry is rejected.
    		CONTENT_BULK_UPLOAD = 1022 #The Batch uploaded use used.
    		CONTENT_ADMIN_KCW_UPLOAD = 1023 #The KCW is used to upload content.
    		CONTENT_CONTENT_GO_TO_PAGE = 1057 #An entry is clicked, bringing up a detailed menu.
    		CONTENT_ENTRY_DRILLDOWN = 1088 #A dropdown is entered from the entry menu.
    		CONTENT_OPEN_PREVIEW_AND_EMBED = 1089 #the preview and embed link is clicked.
    		ACCOUNT_CHANGE_PARTNER_INFO = 1030 #The accounts API information is changed.
    		ACCOUNT_CHANGE_LOGIN_INFO = 1031 #The accounts login information is changed.
    		ACCOUNT_CONTACT_US_USAGE = 1032 #The accounts contact information is changed.
    		ACCOUNT_UPDATE_SERVER_SETTINGS = 1033 #The accounts server settings are changed.
    		ACCOUNT_ACCOUNT_OVERVIEW = 1034 #The account overview settings are changed.
    		ACCOUNT_ACCESS_CONTROL = 1035 #The access control for an account is modified.
    		ACCOUNT_TRANSCODING_SETTINGS = 1036 #The default transcoding settings are modified.
    		ACCOUNT_ACCOUNT_UPGRADE = 1037 #The Account is upgraded/downgraded.
    		ACCOUNT_SAVE_SERVER_SETTINGS = 1038 #The Account udpates are saved to the database.
    		ACCOUNT_ACCESS_CONTROL_DELETE = 1039 #The account's access has been revoked.
    		ACCOUNT_SAVE_TRANSCODING_SETTINGS = 1040 #The accounts encoding settings have been saved to the database.
    		LOGIN = 1041 #A KMC login event fires.
    		DASHBOARD_IMPORT_CONTENT = 1042 #The content report is brought in on the dashboard.
    		DASHBOARD_UPDATE_CONTENT = 1043 #The content report is updated on the dashbaord.
    		DASHBOARD_ACCOUNT_CONTACT_US = 1044 #The Dashboard contact settings have changed.
    		DASHBOARD_VIEW_REPORTS = 1045 #The view report for the Dashboard is updated.
    		DASHBOARD_EMBED_PLAYER = 1046 #The player is embedded on the Dashboard report is updated.
    		DASHBOARD_EMBED_PLAYLIST = 1047 #The dashboard playlist is updated.
    		DASHBOARD_CUSTOMIZE_PLAYERS = 1048 #The dashboard player is customized.
    		APP_STUDIO_NEW_PLAYER_SINGLE_VIDEO = 1050 #A new single video player is created.
    		APP_STUDIO_NEW_PLAYER_PLAYLIST = 1051 #A new playlist player is created.
    		APP_STUDIO_NEW_PLAYER_MULTI_TAB_PLAYLIST = 1052 #A new multi-tab playlist player is created.
    		APP_STUDIO_EDIT_PLAYER_SINGLE_VIDEO = 1053 #A single video player is updated.
    		APP_STUDIO_EDIT_PLAYER_PLAYLIST = 1054 #A playlist player is updated.
    		APP_STUDIO_EDIT_PLAYER_MULTI_TAB_PLAYLIST = 1055 #A multitab playlist player is updated.
    		APP_STUDIO_DUPLICATE_PLAYER = 1056 #A player is duplicated.
    		REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_TAB = 1070 #The bandwidth usage report is updated.
    		REPORTS_AND_ANALYTICS_CONTENT_REPORTS_TAB = 1071 #The content reports tab is updated.
    		REPORTS_AND_ANALYTICS_USERS_AND_COMMUNITY_REPORTS_TAB = 1072 #The user community report is updated.
    		REPORTS_AND_ANALYTICS_TOP_CONTRIBUTORS = 1073 #The top contributors report is updated.
    		REPORTS_AND_ANALYTICS_MAP_OVERLAYS = 1074 #The map overlays report is updated.
    		REPORTS_AND_ANALYTICS_TOP_SYNDICATIONS = 1075 #The top syndications report is updated.
    		REPORTS_AND_ANALYTICS_TOP_CONTENT = 1076 #The top content report is updated.
    		REPORTS_AND_ANALYTICS_CONTENT_DROPOFF = 1077 #The content dropoff report is updated.
    		REPORTS_AND_ANALYTICS_CONTENT_INTERACTIONS = 1078 #The content intearaction report is updated.
    		REPORTS_AND_ANALYTICS_CONTENT_CONTRIBUTIONS = 1079 #The content contributions report is updated. 
    		REPORTS_AND_ANALYTICS_VIDEO_DRILL_DOWN = 1080 #The dropdowns on the reports section is clicked.
    		REPORTS_AND_ANALYTICS_CONTENT_DRILL_DOWN_INTERACTION = 1081 #The dropdown on the report section is used.
    		REPORTS_AND_ANALYTICS_CONTENT_CONTRIBUTIONS_DRILLDOWN = 1082 #The content contributions dropdown is selected.
    		REPORTS_AND_ANALYTICS_VIDEO_DRILL_DOWN_DROPOFF = 1083 #The content dropoff dropdown is selected.
    		REPORTS_AND_ANALYTICS_MAP_OVERLAYS_DRILLDOWN = 1084 #The map overlays dropdown is selected.
    		REPORTS_AND_ANALYTICS_TOP_SYNDICATIONS_DRILL_DOWN = 1085 #The top syndications dropdown is selected.
    		REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_VIEW_MONTHLY = 1086 #The monthly bandwith report.
    		REPORTS_AND_ANALYTICS_BANDWIDTH_USAGE_VIEW_YEARLY = 1087 #The yearly bandwith report.
    	end
    end
  end
end