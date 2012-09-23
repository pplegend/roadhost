class Contact < ActiveRecord::Base
  attr_accessible :contact_via_sms, :contact_via_email, :email,:mobile ,:content, :tel
 
end
