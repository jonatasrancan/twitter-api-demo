# Twitter Api Demo

## Choices

I used the gem [sferik/twitter](https://github.com/sferik/twitter) to consume the twitter api, after a kick research, it show it self a simple gem to work.

The class [twitter_client] (https://github.com/jonatasrancan/twitter-api-demo/blob/master/app/twitter_api/twitter_client.rb) is responsible for consuming the twitter api, it's the core of the app.

For authentication i used [plataformatec/devise](https://github.com/plataformatec/devise), because it's simple and i have experince with it. I used just two modules from devise, wich are database_authenticatable, registerable. One for sign up, and the other for authentication it self.

For tests i used rspec and capybara.


## Local environment setup instructions

You will need these two credentials from twitter (`TWITTER_CONSUMER_KEY`, `TWITTER_CONSUMER_SECRET`)
and put them at your .env file, at the root of the project.

Configure your `config/database.yml` file, like the example file `config/database.yml.sample`.

run

`bundle install`

`rake db:create`

`rake db:migrate`

`rails s`

and enjoy the app =]

## Test suite setup

After bundle install run `RAILS_ENV=test rake db:create` and `RAILS_ENV=test rake db:migrate` to prepare the test database, then you can run `bundle exec rspec --format=documentation` to run the tests.

## Heroku deployment instructions

After installing heroku run `heroku login` to login, then `heroku create` to create a app on heroku and add a git remote named heroku by default.

To deploy the code run `git push heroku master` and `heroku run rake db:migrate` to run the migrate on heroku, and finaly `heroku open`, the app will open on your browser and you can test it, have fun.
