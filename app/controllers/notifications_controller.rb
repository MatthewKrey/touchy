class NotificationsController < ApplicationController
  rescue_from StandardError do |exception|
  trigger_sms_alerts(exception)
# @twilio_number = ENV['TWILIO_NUMBER']
# @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
end
