require 'test_helper'

class AutoShopControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
