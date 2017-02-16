class PagesController < ApplicationController
  def home
  end

  def sms
  
    require 'twilio-ruby'

    account_sid = 'AC4f88f15f9620f21cca7e97ba6f79a1bc' # Your Account SID from www.twilio.com/console
    auth_token = 'efd65f57b6a87edd413c6510c9254188' # Your Auth Token from www.twilio.com/console

    @client = Twilio::REST::Client.new account_sid, auth_token
    message = @client.account.messages.create(:body => :m, 
    :to => "+14014080504",    # Replace with your phone number
    :from => "+12545310672")  # Replace with your Twilio number

    puts message.sid
  end
end
