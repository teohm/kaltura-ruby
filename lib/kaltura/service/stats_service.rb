module Kaltura
  module Service
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
	end
end