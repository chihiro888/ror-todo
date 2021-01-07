# mysql2 issue

docker-compose.yml
```yml
version: '3'

services:
  db:
    image: mysql:8.0
    container_name: mysql
    environment:
      MYSQL_ROOT_PASSWORD: root
      MYSQL_DATABASE: todo
      MYSQL_USER: docker
      MYSQL_PASSWORD: docker
      TZ: 'Asia/Tokyo'
    command: mysqld --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
    ports:
    - 3306:3306
```
```
docker-compose up -d
```

config/database.yml

```yml
default: &default
  adapter: mysql2
  encoding: utf8
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: docker
  password: docker
  host: localhost
```

```
rails r
```

### issue
```
Puma caught this error: Error loading the 'mysql2' Active Record adapter. Missing a gem it depends on? mysql2 is not part of the bundle. Add it to your Gemfile. (LoadError)
```

### fix

Gemfile
```ruby
gem 'mysql2'
```

```
bundle install
```

### issue
```
Gem::Ext::BuildError: ERROR: Failed to build gem native extension.
...
Cannot find include dir(s)
C:\Users\dev\mysql-connector-c-noinstall-6.0.2-win32/include/include
```

### fix

```
bundle config --local build.mysql2 "--with-mysql-dir=C:\Users\dev\mysql-connector-c-noinstall-6.0.2-win32"
```
```
bundle install
```

### issue
```
client.c:1350:38: error: 'MYSQL_DEFAULT_AUTH' undeclared (first use in this
function); did you mean 'MYSQL_SECURE_AUTH'?
 1350 |   return _mysql_client_options(self, MYSQL_DEFAULT_AUTH, value);
      |                                      ^~~~~~~~~~~~~~~~~~
      |                                      MYSQL_SECURE_AUTH
```

Gemfile
```
gem 'mysql2', '~> 0.4.10'
```

### issue
```
C:/Ruby30-x64/lib/ruby/gems/3.0.0/gems/bootsnap-1.5.1/lib/bootsnap/load_path_cache/core_ext/kernel_require.rb:23:in `require': cannot load such file -- Win32API (LoadError)
Did you mean?  win32/sspi
```