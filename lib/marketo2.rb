require 'rubygems'
require 'savon'

Savon.configure do |config|
  config.log = false # disable logging
end

require File.expand_path('marketo2/client', File.dirname(__FILE__))
require File.expand_path('marketo2/authentication_header', File.dirname(__FILE__))
require File.expand_path('marketo2/enums', File.dirname(__FILE__))
require File.expand_path('marketo2/lead_key', File.dirname(__FILE__))
require File.expand_path('marketo2/lead_record', File.dirname(__FILE__))




