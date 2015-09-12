require 'rubygems' # not necessary with ruby 1.9 but included for completeness
require 'twilio-ruby'

# put your own credentials here
account_sid = Rails.application.secrets.twilio_client_id
auth_token = Rails.application.secrets.twilio_auth_token
phone_number = Rails.application.secrets.twilio_phone_number

# set up a client to talk to the Twilio REST API
@client = Twilio::REST::Client.new account_sid, auth_token

@client.account.messages.create({
	:from => phone_number,
})
