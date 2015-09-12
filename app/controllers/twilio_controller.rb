require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

class TwilioController < ApplicationController
  # credentials
  account_sid = Rails.application.secrets.twilio_client_id
  auth_token = Rails.application.secrets.twilio_auth_token
  phone_number = Rails.application.secrets.twilio_phone_number
  test_number = Rails.application.secrets.twilio_test_number

  # users
  touchy_bot = phone_number
  test_num = test_number
  users = { '+19178644825' => "Gabi O'Connor" }

  @client = Twilio::REST::Client.new account_sid, auth_token

  # Send message to user
  users.each do |user_phone, user_name|
    message = @client.account.messages.create(
  	   :from => test_num,
       :to => user_phone,
       :body => "Hi #{user_name}, this is a test."
     )
     puts "Sent text to #{user_name}"
  end
end
