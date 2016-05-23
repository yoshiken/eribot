# Description
#  pixiからえっちいがぞうをえらんでくる
# 
# Dependencies:
#
#
# Configuration:
#  
#
# Commands:
#  
#
# Notes:
#  None
#
# Author:
#  yoshikne
#  


module.exports = (robot) ->
    robot.hear /画像/, (msg) ->
        robot.http("http://google.com")
            .get() (err, res, body) ->
                 msg.send "#{body}"
