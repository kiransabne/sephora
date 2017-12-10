require 'test_helper'

class SubCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get sub_categories_controller_url
    assert_response :success
  end

end
