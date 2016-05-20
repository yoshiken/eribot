module.exports = (robot) ->
  robot.hear /エリチカ/, (msg) ->
      msg.send msg.random ["ハラショー", "何か用ですか？", "認められないワァ", "膝が痛い…"]
      
