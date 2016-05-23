Pixiv = require 'node-pixiv'
path  = require 'path'
{my}  = require path.resolve 'path', 'to', 'my'

download = ->
return new Promise (resolve, reject) ->
pixiv_illust_id_pattern = /illust_id=(.*)/g
ex_illust_url = 'http://www.pixiv.net/member_illust.php?mode=medium&illust_id=55013662'
work_id = pixiv_illust_id_pattern.exec(ex_illust_url)[1]

pixiv = new Pixiv()
        pixiv.login # 認証
        username: yskn.beer
        password: ributyan
        .then () ->
        opts = image_sizes: 'large'
        pixiv.work work_id, opts # イラストの詳細データを取得
        .then (data) ->
        illust_url = data.response[0].image_urls.large
        opts =
        requestParams:
headers: 'referer': 'http://www.pixiv.net/' # refererだけが必要
dest: '/path/to/test.jpg'
my.saveImage illust_url, opts # 画像のダウンロード
.then (saveResult) -> resolve saveResult
