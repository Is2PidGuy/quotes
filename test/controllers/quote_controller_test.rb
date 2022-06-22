require "test_helper"

class QuoteControllerTest < ActionDispatch::IntegrationTest
  test "test json" do
    status = get '/quote.json'
    assert status == 200
    body = JSON.parse(@response.body)
    assert body['quote'].keys == ['title', 'author']
  end

  test "test xml" do
    status = get '/quote.xml'
    assert status == 200
    assert @response.body.include?('<?xml version="1.0" encoding="UTF-8"?>')
  end

  test "test html" do
    status = get '/quote.html'
    assert status == 200
    assert @response.body.include?('html')
  end
end
