REST JSON API: Countries
=========================

Simple interface for querying country information by CCA2 two-character country code,
per assignment https://bitbucket.org/mikaelhg/interview-countries

# Find the beef
* Test: [countries_test.rb](countries_test.rb)
* Implementation: [countries.rb](countries.rb)

# Install prerequisites
1. [Bundler](http://bundler.io/)
2. Gems: `bundle install --path vendor/bundle`

# Test it
`bundle exec ruby countries_test.rb`

# Run it locally
`bundle exec rackup`

Check out the details of Finland at http://localhost:9292/countries/FI

# Deploy on Heroku
Prerequisites:

1. A [Heroku](https://heroku.com/) account, obviously
2. [Heroku toolbelt](https://toolbelt.heroku.com/) installed and ready to go

Set up a new app on Heroku and deploy:
```
heroku create
git push heroku master
```
