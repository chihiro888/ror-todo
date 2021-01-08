# rails

### rails MVC

https://guides.rubyonrails.org/getting_started.html  


##### config/routes.rb
```ruby
Rails.application.routes.draw do
  get "/", to: "todo#index"
end
```

```
rails generate controller Todo index --skip-routes
```

##### app/views/todo/index.html.erb
```html
<h1>hello</h1>
```

### rails MVC key value

##### app/controllers/todo_controller.rb
```ruby
class TodoController < ApplicationController
  def index
    @key = 'value'
  end
end
```

##### app/views/todo/index.html.erb
```html
<h5><%= @key %></h5>
```

### rails model
```
rails generate model Todo content:string
```
```
rails db:migrate
```
```
rails generate model User username:string
```