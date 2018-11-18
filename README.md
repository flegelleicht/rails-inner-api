# README

## Branch „with-api-gateway“

This branch experiments with auto-requiring files in [`app/config/initializers/services.rb`](config/initializers/services.rb)

This gives every service in [`app/services`](app/services) a chance to register their routes at the inner [`Api`](app/api/api.rb) Gateway

Unfortunately this messes up code reloading in the `development` enviroment: It seems to be that the above auto-requiring will not be triggered again, leaving the Api gateway empty :-/

We'll have look later :)
