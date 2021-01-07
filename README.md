# ROR-TODO

### 開発環境
```
windows10
WSL

rbenv 1.1.2-40-g62d7798
ruby 3.0.0p0 (2020-12-25 revision 95aff21468) [x86_64-linux]
gem 3.2.3
```

### WSLセッティング
https://github.com/h4ppyy/ror-todo/blob/master/docs/ror_mysql2_wsl.md  

上のLINKをお参考してください。


### 始まり

project
```
git clone https://github.com/h4ppyy/ror-todo
cd ror-todo/todo
```

database
```
docker-compose up -d
```

webserver
```
bundle install
rails s
```

### directory 説明

##### demo
```
サービスデモの写真を保存しています。
```

##### docs
```
開発履歴を書いています。
```

##### playground
```
rubyを練習するとき使います。
```

##### todo
```
railsプロジェクトです。
```

### demo

##### version 1

![version1](https://github.com/h4ppyy/ror-todo/blob/master/demo/version1.png?raw=true "version1")