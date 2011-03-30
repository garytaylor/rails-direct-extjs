###
# XRequest
# A standard response class suitable for Ext.Direct requests.
# @author Chris Scott
#
class XRequest
    attr_reader :id, :tid, :controller, :action, :type, :params

    def initialize(params)
        # TODO: simply setting @id, @params
        @tid        = params["tid"]
        @type       = params["type"]
        @params     = (params["data"].kind_of?(Array)) ? params["data"].first : {}
        @controller = params["xcontroller"]
        @action     = params["xaction"]
    end

end
