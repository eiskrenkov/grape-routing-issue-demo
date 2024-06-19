# Ruby Grape v2.1.0 rouring priority issue demo

I'm mounting grape API in rails routes at the top of the file

```ruby
Rails.application.routes.draw do
  mount Twitter::Api => '/'

  get "up" => "rails/health#show", as: :rails_health_check
end
```

When i'm doing GET `http://localhost:3000/up` request in grape v2.0.0 it returns response correctly, but in grape v2.1.1 i'm getting 404 error. It seems like something was changed in route prioritising, it seems like if nothing matches grape's routes it doesn't continue the journey

## Steps to reproduce

1. `(export SHOULD_WORK=true; bundle; bundle exec rails s)`

will use grape v2.0.0 and will respond to `http://localhost:3000/up` correctly

2. `(export SHOULD_WORK=false; bundle; bundle exec rails s)`

will use grape v2.1.0 and respond with 404
