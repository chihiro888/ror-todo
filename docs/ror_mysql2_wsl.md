# ruby on rails & mysql2 in WSL


### install dependency
```
sudo apt-get update
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev
```

### install rbenv
```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
```

### setting rbenv
```
vi ~/.bashrc
```

```sh
export PATH=$PATH:$HOME/.rbenv/bin 
eval "$(rbenv init -)"
```

```
source ~/.bashrc
```

### setting ruby
```
rbenv --version

rbenv install --list

rbenv install 3.0.0

rbenv versions

rbenv global 3.0.0

rbenv versions
```

### check ruby version
```
ruby --version
gem --version
```

### make project

```
cd ~

mkdir project
cd project

git clone https://github.com/h4ppyy/ror-todo
cd ror-todo/todo
```

### install mysql-client
```
sudo apt-get install mysql-client
```

### test connection
```
mysql -h127.0.0.1 -udocker -pdocker
```

### install dependency
```
sudo apt-get install libsqlite3-dev
sudo apt install libmysqlclient-dev
```

### add mysql module

Gemfile
```
gem 'mysql2'
```

### install module
```
bundle install
```