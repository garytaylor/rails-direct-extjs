#$:.unshift(File.dirname(__FILE__)) unless
#  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))
#test


module Rails
    module ExtJS
        module Direct
            VERSION = '0.0.15'
        end
    end
end
require File.join(File.dirname(__FILE__), 'rails-extjs-direct', 'xresponse')
require File.join(File.dirname(__FILE__), 'rails-extjs-direct', 'xrequest')
require File.join(File.dirname(__FILE__), 'rails-extjs-direct', 'xexception')
require File.join(File.dirname(__FILE__), 'rails-extjs-direct', 'rack', 'remoting_provider')
require File.join(File.dirname(__FILE__), 'rails-extjs-direct', 'mixins', 'action_controller', 'direct_controller')
require File.join(File.dirname(__FILE__), 'rails-extjs-direct', 'helpers', 'direct_controller_helper')
