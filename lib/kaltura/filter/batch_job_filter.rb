module Kaltura
  module Filter
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
	end
end