require 'sinatra'
require 'json'

def load_json_data
  puts 'Loading countries'
  json_data = File.read('countries.json')
  countries = JSON.parse(json_data)
  Hash[
    * countries.map do |c|
      [c['cca2'], c]
    end.flatten
  ]
end

configure do
  set :countries_by_cca2, load_json_data
end

get '/countries/:cca2' do
  country = settings.countries_by_cca2[params['cca2']]
  if country
    content_type :json
    country.to_json
  else
    status 404
    'Not found'
  end
end
