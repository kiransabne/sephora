require 'test_helper'

class SubSubCategoriesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get sub_sub_categories_new_url
    assert_response :success
  end

  test "should get create" do
    get sub_sub_categories_create_url
    assert_response :success
  end

  test "should get index" do
    get sub_sub_categories_index_url
    assert_response :success
  end

end
