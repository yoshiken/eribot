module.exports = (robot) ->
  robot.hear /エリ/, (msg) ->
      msg.send "何の用ですか"
