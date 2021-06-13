# Twilio to Discord Bridge

In my pursuit of being able to bridge all my communications together mostly inspired by the [Beeper Ansible Script](https://github.com/spantaleev/matrix-docker-ansible-deploy) I've found I have a few friends who are SMS holdouts.
As such, it is my hope that I'll be able to bridge an SMS Group text to a Discord channel via Twilio. 

This will allow my existing Matrix <> Discord bridge to relay messages to my Matrix client. 

Currently, the read_messages.rb file reads the latest message sent TO the Twilio number. Ultimately some filtration will need to be performed on Discord side to prevent infinity reposting.
I've retained tutorial cruft for my own reference so I remember how this stuff works.

From what I've assessed, my tasks are:
-[] Build a Discord Bot (or modify my existing bot? still need to assess. Probably separate or else it won't relay correctly.) 
-[] Configure simple public internet facing Sinatra app for Twilio webhook (and figure out auth or access control?)
-[] Segment more granular subtasks into individual repos as needed

I'll probably ultimately split this into a Discord Bot and Twilio client application.
