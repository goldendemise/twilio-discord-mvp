require 'twilio-ruby'
require 'sinatra'
require_relative './creds'

account_sid = TwilioCreds::ACCOUNT_ID
auth_token = TwilioCreds::AUTHORIZATION_TOKEN
client = Twilio::REST::Client.new(account_sid, auth_token)

#using the below for testing commands
#twilio phone-numbers:update "+15092848383" --sms-url="http://localhost:8080/read-this"
post '/read-this' do
    messages = client.messages.list(
        limit:10,
        to: TwilioCreds::MY_TWILIO_NUMBER
        )
    
    print messages.first.body + "\n"
end