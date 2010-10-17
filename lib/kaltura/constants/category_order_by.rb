module Kaltura
	module Constants
	  ##
    # The constants module will soon be depreciated into an Enumeration module to
    # be more in line with the C# API client's namespacing.
    #
    # @see Kaltura::Filter::CategoryFilter
    ##
	  class CategoryOrderBy
  		DEPTH_ASC = "+depth" #order by depth ascending.
  		DEPTH_DESC = "-depth" #order by depth descending.
  		FULL_NAME_ASC = "+fullName" #order by full name ascending.
  		FULL_NAME_DESC = "-fullName" #order by full name descending. 
  		CREATED_AT_ASC = "+createdAt" #order by created_at ascending.
  		CREATED_AT_DESC = "-createdAt" #order by created_at descending.
  	end
  end
end