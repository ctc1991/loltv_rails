require 'test_helper'

class YoukuControllerTest < ActionDispatch::IntegrationTest
  test "should get play" do
    get youku_play_url
    assert_response :success
  end

end
