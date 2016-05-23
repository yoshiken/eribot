fs      = require 'fs'
request = require 'request'

my = ->

saveImage: (url, opts) ->
        new Promise (resolve, reject) ->
        ws = fs.createWriteStream(opts.dest)
request(url, opts.requestParams).pipe(ws)
        ws.on 'finish', -> return resolve url
        ws.on 'error', (err) -> return reject err

exports.my = my()
