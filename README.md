# eribot
かしこいかわいい感じにしたい


# 機能

## lovelive_gif
mentionで"gif"って投げるとlovelivegif.tumblr.comから適当にgifを引っ張ってくる


# How to
Change to your new directory.

```
$ cd your_bot_name
```

## Install command line interface
You begin , install Bluex and Cloud Foundry command line interfaces.

### Cloud Foundry command line interfaces install

```
brew tap cloudfoundry/tap
brew install cf-cli
```
https://github.com/cloudfoundry/cli/releases

### Bluex command line interfaces install

http://clis.ng.bluemix.net/ui/home.html

## Make manifest.yml
You need to make manifest.yml.
This is necessary to use hubot in Bluex.

```
$ vim manifest.yml
```


```yml:manifest.yml
applications:
- buildpack: https://github.com/jthomas/nodejs-v4-buildpack.git
  command: ./bin/hubot --adapter slack
    path: .
      instances: 1
        memory: 256M
```

## Bluex Connection

Connection to Bluex now. but , but you need to register. 
Regarding registration: Please make the workng speace using those as a reference.  

[IBM developerWorks : IBM Bluemix](https://www.ibm.com/developerworks/jp/bluemix/)
[IBM Bluemixフリートライアルアカウント作成手順 - Qiita](http://qiita.com/KenichiSekine/items/6ad49b25167b3f4cdb63)


```
$ bluemix api https://api.au-syd.bluemix.net
$ bluemix login -u Username -o Organization -s space_name
```

## Slack adapter

You do not have to set up the environment variables before to enjoy the Slack life.

This is simple , just enter the following command .

```
$ cf set-env your_bot_name HUBOT_SLACK_TOKEN slack_token
```

Please refer to the Slack token For the below link to reference
 https://api.slack.com/web

## Deploy your application!!!

enjoy! :)

```
$ cf push application_name
```



# TODO
- お天気情報取得
- GoogleCalendarと連携
- 毎朝8時ぐらいに自動的に天気と予定を投稿してくれるようにする
- pixivからえっちい画像DLする
- 任意の予定の任意の時間前に特定のアクションを起こせるようにする
 - ex.)バイト出勤の1.5時間前に京王線の遅延情報を投稿する
