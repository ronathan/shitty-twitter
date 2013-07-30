require 'test_helper'

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "tweet can get user's id" do
  	tweet = tweets(:one)
  	assert_equal tweet.user.id, users(:one).id
  end
end
