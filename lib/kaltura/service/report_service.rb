module Kaltura
  module Service
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
	end
end