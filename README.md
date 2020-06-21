# speedtest-es
speedtest-cliの結果をElasticsearchに保存するスクリプト

## 前提条件
既にlocalhost:9200でElasticsearch(ver7.6以上)が動いているものとする  
必要に応じて新規にElasticsearch(ついでにKibana)をセットアップしておく  
https://github.com/h-mineta/docker-elk-stack

## インストール
```
pip3 install --user speedtest-cli
cd ~
git clone https://github.com/h-mineta/speedtest-es
cd speedtest-es
./es_initialize.sh
```

## 使い方
crontab等で定期的に実行する
```
# speedtest
*/10 * * * *  ~/speedtest-es/run.sh
```
