ENV['RACK_ENV'] = 'test'
require 'minitest/autorun'
require 'rack/test'

require './countries'

class CountriesTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_get_details_of_finland
    get '/countries/FI'
    assert last_response.ok?
    details = JSON.parse(last_response.body)
    assert_equal 'Helsinki', details['capital']
  end

  def test_get_nonexistent_country
    get '/countries/XX'
    assert_equal last_response.status, 404
  end
end
