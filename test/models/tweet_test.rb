require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "tweet can get user's id" do
  	tweet = tweets(:one)
  	assert_equal tweet.user.id, users(:one).id
  end

  test "tweet can't be blank" do
  	tweet = Tweet.new(content: "")
  	assert !tweet.valid?
  end

  test "tweet can't be longer than 140 characters" do
  	skip
  end
end
