require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  require 'twilio-ruby'

 # credentials
 # account_sid = Rails.application.secrets.twilio_client_id
 # auth_token = Rails.application.secrets.twilio_auth_token
 # phone_number = Rails.application.secrets.twilio_phone_number
 # test_number = Rails.application.secrets.twilio_test_number

 account_sid = 'AC94e3c2807c21b3f85d3c1872d18f8783'
 auth_token = '09af12a632438597b453cb07e8a27978'
 phone_number = '+16509841337'
 test_number = '+15005550006'

 # users
 touchy_bot = phone_number
 test_num = test_number
 users = { '+19178644825' => "Gabi O'Connor" }

 @client = Twilio::REST::Client.new account_sid, auth_token

 # Send message to user
 users.each do |user_phone, user_name|
   sms = @client.account.messages.create(
        :from => test_num,
      :to => user_phone,
      :body => "Hi #{user_name}, this is a test."
    )
    puts sms.body
 end

  def voice
  	response = Twilio::TwiML::Response.new do |r|
  	  r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
  	end

  	render_twiml response
  end
end
