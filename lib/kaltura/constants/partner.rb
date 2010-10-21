module Kaltura
  module Constants
    ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::PartnerFilter
    # @see Kaltura::Partner
    ##    
    module Partner
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Filter::PartnerFilter
      ##      
      class OrderBy
    		ID_ASC = "+id" #order by ID ascending
    		ID_DESC = "-id" #order by ID descending
    		NAME_ASC = "+name" #order by name ascending
    		NAME_DESC = "-name" #order by name descending
    		WEBSITE_ASC = "+website" #order by website ascending
    		WEBSITE_DESC = "-website" #order by website descending
    		CREATED_AT_ASC = "+createdAt" #order by created_at ascending
    		CREATED_AT_DESC = "-createdAt" #order by created_at descending
    		ADMIN_NAME_ASC = "+adminName" #order by admin name ascending
    		ADMIN_NAME_DESC = "-adminName" #order by admin name descending
    		ADMIN_EMAIL_ASC = "+adminEmail" #order by admin email ascending
    		ADMIN_EMAIL_DESC = "-adminEmail" #order by admin email descending
    		STATUS_ASC = "+status" #order by status ascending
    		STATUS_DESC = "-status" #order by status descending
    	end

      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Partner
      ##    	
    	class Status
    		ACTIVE = 1 #Partner is active.
    		BLOCKED = 2 #Partner is banned.
    		FULL_BLOCK = 3 #Partner is mega-banned
    	end
    	
      ##
      # The constants module will soon be depreciated into an Enumeration module to
      # be more in line with the C# API client's namespacing.
      #
      # @see Kaltura::Partner
      ##    	
    	class Type
    		KMC = 1 #KMC Partner
    		WIKI = 100 #Media Wiki Partner
    		WORDPRESS = 101 #Wordpress Partner
    		DRUPAL = 102 #Drupal Partner
    		DEKIWIKI = 103 #Deki Wiki Partner
    		MOODLE = 104 #Moodle Partner
    		COMMUNITY_EDITION = 105 #CE Partner
    		JOOMLA = 106 #Joomla Partner
    	end
    end
  end
end