# Description:
#   Which is Better?
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot which is better[?] <text> or <text>?
#   hubot who is better[?] <text> or <text>?
#   hubot which is worse[?] <text> or <text>?
#   hubot who is worse[?] <text> or <text>?
#
# Author:
#   cpradio plus me helping a little

silly_resp = [
  "I could tell you, but then I'd have to kill you",
  "Answering that would be a matter of national security",
  "You can't possibly compare them!",
  "Neither of them is my favorite",
  "This is just like magic 8 ball",
  "Both hold a special place in my heart"
]

module.exports = (robot) ->
  robot.respond /(which|who) is (better|worse)\?* (.*) or (.*?)\??$/i, (msg) ->
    choosen_response = msg.random [1..7]
    if choosen_response >= 3
      msg.send msg.random silly_resp
    else
      msg.send "Clearly #{msg.match[choosen_response + 2]} is #{msg.match[2]}"
