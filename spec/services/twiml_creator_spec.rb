require 'rails_helper'

describe TwimlCreator do
  describe '#create' do
    it 'returns a Twilio::TwiML::Response object' do
      response = TwimlCreator.new.create

      expect(response).to be_a Twilio::TwiML::Response
    end
  end
end
