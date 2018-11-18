require 'test_helper'

class MessagesApiTest < ActiveSupport::TestCase
  test "should greet with default name when no other is given" do
    greeting = MessagesApi.get('/greeting', {})
    assert_equal(greeting, 'Hello World!')
  end

  test "should greet with the same name given as parameter" do
    parameter = "Hans"
    greeting = MessagesApi.get('/greeting', {name: parameter})
    assert_equal(greeting, 'Hello Hans!')
  end

  test "should raise an exception when requesting messages without a valid user" do
    assert_raises(Exception) {
      messages = MessagesApi.get('/messages', {}, {})
    }
  end

  test "should get the latest ten messages for a user by default" do
    # Set up user
    user = {id: 42}
    # Set up mock storage for MessagesApi
    expected_messages = [
      
    ]
    messages = MessagesApi.get('/messages', {user: user}, {} )
    # Compare result
    assert_equal(messages, expected_messages)
  end
end
