# Download the twilio-ruby library from twilio.com/docs/libraries/ruby
require 'twilio-ruby'
require './creds'

account_sid = TwilioCreds::ACCOUNT_ID
auth_token = TwilioCreds::AUTHORIZATION_TOKEN
client = Twilio::REST::Client.new(account_sid, auth_token)

from = TwilioCreds::MY_TWILIO_NUMBER # Your Twilio number
to = TwilioCreds::MY_PHONE_NUMBER # Your mobile phone number

client.messages.create(
from: from,
to: to,
body: "The initial message didn't go through, maybe this one will."
)