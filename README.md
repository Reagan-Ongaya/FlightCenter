## OpenCenter 
### A flightCenter app built with Ruby on Rails and React.js

This is an app built with **Ruby on Rails** and **React.js** using **Webpacker**.





Thit app uses:

* Ruby 
* Rails 
* Database: `postgresql`
* React 
* React Hooks API
* React Context API

## Running it locally
- run `bundle exec rails db:prepare`
- run `npm install` or `yarn install`
- run `bundle exec rails s`

- navigate to `http://localhost:3000`

## Environment Variables
If you want functionality like password reset emails to work locally, you'll need to set the following environment variables in `config/application.yml`


## Routes
```shell
     Prefix Verb   URI Pattern                                                                                       Controller#Action
                                    root GET    /                                                                                                 pages#index
                         api_v1_airlines GET    /api/v1/airlines(.:format)                                                                        api/v1/airlines#index {:params=>:slug}
                                         POST   /api/v1/airlines(.:format)                                                                        api/v1/airlines#create {:params=>:slug}
                      new_api_v1_airline GET    /api/v1/airlines/new(.:format)                                                                    api/v1/airlines#new {:params=>:slug}
                     edit_api_v1_airline GET    /api/v1/airlines/:id/edit(.:format)                                                               api/v1/airlines#edit {:params=>:slug}
                          api_v1_airline GET    /api/v1/airlines/:id(.:format)                                                                    api/v1/airlines#show {:params=>:slug}
                                         PATCH  /api/v1/airlines/:id(.:format)                                                                    api/v1/airlines#update {:params=>:slug}
                                         PUT    /api/v1/airlines/:id(.:format)                                                                    api/v1/airlines#update {:params=>:slug}
                                         DELETE /api/v1/airlines/:id(.:format)                                                                    api/v1/airlines#destroy {:params=>:slug}
                          api_v1_reviews POST   /api/v1/reviews(.:format)                                                                         api/v1/reviews#create
                           api_v1_review GET    /api/v1/reviews/:id(.:format)                                                                     api/v1/reviews#show
                                         PATCH  /api/v1/reviews/:id(.:format)                                                                     api/v1/reviews#update
                                         PUT    /api/v1/reviews/:id(.:format)                                                                     api/v1/reviews#update
                                         DELETE /api/v1/reviews/:id(.:format)                                                                     api/v1/reviews#destroy
                                         GET    /*path(.:format)                                                                                  pages#index
        turbo_recede_historical_location GET    /recede_historical_location(.:format)                                                             turbo/native/navigation#recede
        turbo_resume_historical_location GET    /resume_historical_location(.:format)                                                             turbo/native/navigation#resume
       turbo_refresh_historical_location GET    /refresh_historical_location(.:format)                                                            turbo/native/navigation#refresh
           rails_postmark_inbound_emails POST   /rails/action_mailbox/postmark/inbound_emails(.:format)                                           action_mailbox/ingresses/postmark/inbound_emails#create
              rails_relay_inbound_emails POST   /rails/action_mailbox/relay/inbound_emails(.:format)                                              action_mailbox/ingresses/relay/inbound_emails#create
           rails_sendgrid_inbound_emails POST   /rails/action_mailbox/sendgrid/inbound_emails(.:format)                                           action_mailbox/ingresses/sendgrid/inbound_emails#create
     rails_mandrill_inbound_health_check GET    /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#health_check
           rails_mandrill_inbound_emails POST   /rails/action_mailbox/mandrill/inbound_emails(.:format)                                           action_mailbox/ingresses/mandrill/inbound_emails#create
            rails_mailgun_inbound_emails POST   /rails/action_mailbox/mailgun/inbound_emails/mime(.:format)                                       action_mailbox/ingresses/mailgun/inbound_emails#create
          rails_conductor_inbound_emails GET    /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#index
                                         POST   /rails/conductor/action_mailbox/inbound_emails(.:format)                                          rails/conductor/action_mailbox/inbound_emails#create
       new_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/new(.:format)                                      rails/conductor/action_mailbox/inbound_emails#new
      edit_rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id/edit(.:format)                                 rails/conductor/action_mailbox/inbound_emails#edit
           rails_conductor_inbound_email GET    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#show
                                         PATCH  /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
                                         PUT    /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#update
                                         DELETE /rails/conductor/action_mailbox/inbound_emails/:id(.:format)                                      rails/conductor/action_mailbox/inbound_emails#destroy
new_rails_conductor_inbound_email_source GET    /rails/conductor/action_mailbox/inbound_emails/sources/new(.:format)                              rails/conductor/action_mailbox/inbound_emails/sources#new
   rails_conductor_inbound_email_sources POST   /rails/conductor/action_mailbox/inbound_emails/sources(.:format)                                  rails/conductor/action_mailbox/inbound_emails/sources#create
   rails_conductor_inbound_email_reroute POST   /rails/conductor/action_mailbox/:inbound_email_id/reroute(.:format)                               rails/conductor/action_mailbox/reroutes#create
rails_conductor_inbound_email_incinerate POST   /rails/conductor/action_mailbox/:inbound_email_id/incinerate(.:format)                            rails/conductor/action_mailbox/incinerates#create
                      rails_service_blob GET    /rails/active_storage/blobs/redirect/:signed_id/*filename(.:format)                               active_storage/blobs/redirect#show
                rails_service_blob_proxy GET    /rails/active_storage/blobs/proxy/:signed_id/*filename(.:format)                                  active_storage/blobs/proxy#show
                                         GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                                        active_storage/blobs/redirect#show
               rails_blob_representation GET    /rails/active_storage/representations/redirect/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations/redirect#show
         rails_blob_representation_proxy GET    /rails/active_storage/representations/proxy/:signed_blob_id/:variation_key/*filename(.:format)    active_storage/representations/proxy#show
                                         GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format)          active_storage/representations/redirect#show
                      rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                                       active_storage/disk#show
               update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                               active_storage/disk#update
                    rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                                    active_storage/direct_uploads#create
 
### Getting Started: Creating a New Rails App With React & Webpacker
First things first, let's create a brand new rails app. We can do this from the command line by doing `rails new app-name` where app-name is the name of our app, however we are going to add a few additional things. We need to add `--webpack=react` to configure our new app with webpacker to use react, and additionally I'm going to add `--database=postgresql` to configure my app to use postgres as the default database. so the final output to create our new app will look like this:

```shell
rails new FlightCenter --webpack=react --database=postgresql
```

Once this finishes running, make sure to cd into the directory of your new rails app (`cd FlightCenter`), then we can go ahead and create the database for our app by entering the following into our command line:

```
bundle exec rails db:create
```

## Models
Our data model for this app will be pretty simple. Our app will have `airlines`, and each airline in our app will have many `reviews`.

For our airlines, we want to have a `name` for each airline, a unique url-safe `slug`, and an `image_url` for airline logos (Note: I'm not going to handle file uploading in this article, instead we will just link to an image hosted on s3).

For our reviews, we want to have a `title`, `description`, `score`, and the `airline_id` for the airline the review will belong to. The scoring system I'm going to use for our reviews will be a star rating system that ranges from 1 to 5 stars; 1 being the worst score and 5 being the best score.


So from our command line we can enter the following generators to create our airline and review models in our app:

```shell
rails g model Airline name slug image_url
```

```shell
rails g model Review title description score:integer airline:belongs_to
```
## Serializers: Building Our JSON API

For this app we are going to use [fast_jsonapi](https://github.com/Netflix/fast_jsonapi)



Let's install the fast_jsonapi gem, by adding it to our Gemfile:

```ruby
gem 'fast_jsonapi'
```

Then we can install it with bundle install from our terminal:


"bundle install"

Now we can use a generator to create a new airline serializer and review serializer, passing along the specific attributes we want to expose in our api:

```shell
rails g serializer Airline name slug image_url
```

```shell
rails g serializer Review title description score airline_id
```

