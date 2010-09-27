module Kaltura
  module Service
    ##
    # CategoryService is responsible for adding and managing Categories.  Categories are the main 
    # means to filter entries within the KMC.
    #
    # @example Add a new category to the KMC filter list.
    #   new_category = Kaltura::Category.new
    #   new_category.name = "waffles"
    #   client.category_service.add(new_category)
    #
    # @example Get an existing category by ID.
    #   client.category_service.get(214)
    #
    # @example Update an existing category.
    #   category_update = Kaltura::Category.new
    #   category_update.description = "waffles are pretty freaking good."
    #   client.category_service.update(214,category_update)
    #
    # @example Delete an existing category.
    #   client.category_service.delete(214)
    #
    # @example List all categories with a parent_id of 2
    #   category_filter = Kaltura::Filter::CategoryFilter.new
    #   category_filter.parent_id_equal = 2
    #   client.category_service.list(category_filter)
    ##
    class CategoryService < BaseService
      
      ##
      # Adds a new Category.
      #
      # @param [Kaltura::Category] category The category that will be created.  The crucial field to fill out is name.
      # 
      # @return [Kaltura::Category] Returns the category as it now appears on the server.  It would be beneficial to 
      #   save the ID of the category for later reference.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def add(category)
  			kparams = {}
  			client.add_param(kparams, 'category', category)
  			perform_request('category','add',kparams,false)
  		end

      ##
      # Retrieves a category by it's ID.
      #
      # @param [Integer] id The Kaltura::Category object's id.
      #
      # @return [Kaltura::Category] The requested category.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def get(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('category','get',kparams,false)
  		end

      ##
      # Updates a category.
      # The best practice as with all updates would be to insantiate a new Kaltura::Category and update specific fields.
      #
      # @param [Integer] id The Kaltura::Category id of the category to be updated.
      # @param [Kaltura::Category] A newly insantiated Category object with the fields updated that you'd like to update.
      # 
      # @return [Kaltura::Category] The new and improved Category object.
      # 
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def update(id, category)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			client.add_param(kparams, 'category', category)
  			perform_request('category','update',kparams,false)
  		end

      ##
      # Deletes the requested Category.
      # I am fairly confident that this will not actually clear the category from each entry, but it is no longer
      # a filter on the KMC.
      #
      # @param [Integer] id The category ID to remove.
      #
      # @return [nil] Returns nothing.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.
      ##
  		def delete(id)
  			kparams = {}
  			client.add_param(kparams, 'id', id)
  			perform_request('category','delete',kparams,false)
  		end

      ##
      # Lists all Categories given the specified filter.
      #
      # @param [Kaltura::Filter::CategoryFilter] filter The filter to apply.
      #
      # @return [Kaltura::Response::CategoryListResponse] Wrapper for Kaltura::Response::BaseResponse.
      #
      # @raise [Kaltura::APIError] Raises default Kaltura errors.      
      ##
  		def list(filter=nil)
  			kparams = {}
  			client.add_param(kparams, 'filter', filter)
  			perform_request('category','list',kparams,false)
  		end
  	end #class CategoryService
	end
end