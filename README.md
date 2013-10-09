marketo_gem
===========

## Install

    #GemFile
    gem "marketo", :git => "git@github.com:hanaiapa/marketo_gem.git"

## Setup
  
    #app/config/initializers/marketo.rb
    MARKETO = Rapleaf::Marketo.new_client(ENV["MARKETO_USER_ID"],ENV["MARKETO_ENCRYPTION_KEY"]) if ENV["MARKETO_USER_ID"] && ENV["MARKETO_ENCRYPTION_KEY"]
  
## Usage

    if MARKETO
      marketo_user = Rapleaf::Marketo::LeadRecord.new(self.email)
      marketo_user.set_attribute_if_blank('FirstName', self.first_name)
      marketo_user.set_attribute_if_blank('LastName', self.last_name)
      marketo_user.set_attribute_if_blank('LeadSource', self.source)
      marketo_user.set_attribute_if_blank('App_Name__c', self.owned_applications.production.first.name) if self.owned_applications.production.first
      marketo_user.set_attribute('Integration_Status_FXSDK_iOS', self.ios_status)
      marketo_user.set_attribute('Integration_Status_FXSDK_Android', self.android_status)
      response = MARKETO.sync_lead_record(marketo_user)
    else
      puts "MARKETO is not setup"
    end
