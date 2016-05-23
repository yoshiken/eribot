# Description
#  get lovelive-gif by tumblr
# 
# Dependencies:
#  "tumblrbot": "0.1.0"
#
# Configuration:
#  HUBOT_TUMBLR_API_KEY=TumblrAPIkey
#
# Commands:
#  hubot gif
#
# Notes:
#  None
#
# Author:
#  yoshikne


tumblr = require "tumblrbot"
SOURCES = {
  "lovelivegif.tumblr.com"
}

getGif = (blog, msg) ->
  tumblr.photos(blog).random (post) ->
    msg.send post.photos[0].original_size.url

module.exports = (robot) ->
  robot.respond /gif/i, (msg) ->
    blog = msg.random Object.keys(SOURCES)
    getGif blog, msg
