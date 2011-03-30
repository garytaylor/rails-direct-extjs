module Rails::ExtJS::Direct::Controller

    def self.included(base)
      base.class_eval do
        cattr_accessor :extjs_direct_actions
        before_filter :extjs_direct_prepare_request

        # include the Helper @see helpers/direct_controller_helper.rb
        helper Helper

        def self.direct_actions(*actions)
          unless actions.empty?
            self.extjs_direct_actions = actions.collect {|a| a.kind_of?(Hash) ? a : {:name => a, :len => 1}}
          else
            self.extjs_direct_actions
          end
        end
      end
    end

    def extjs_direct_prepare_request
        #TODO just populate params with the XRequest data.

        @xrequest = XRequest.new(params)
        @xresponse = XResponse.new(@xrequest)

        token = params["authenticity_token"] || nil

        #params.each_key do |k|
         #params.delete(k)
        #end

        params["authenticity_token"] = token if token

        if @xrequest.params.kind_of?(Integer) || @xrequest.params.kind_of?(Array)
          params[:id] = @xrequest.params
        elsif @xrequest.params.kind_of?(Hash)
          @xrequest.params.each do |k,v|
            params[k] = v
          end
        end
    end

    def respond(status, params)
      @xresponse.status = status
      @xresponse.message = params[:message] if params[:message]
      @xresponse.result = params[:result] if params[:result]

      render :json => @xresponse
    end

    def rescue_action(e)
      if (e.kind_of?(XException))
        render :json => XExceptionResponse.new(@xrequest, e)
      else
        raise e
      end
    end
end



