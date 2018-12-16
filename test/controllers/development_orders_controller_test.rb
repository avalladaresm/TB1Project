require 'test_helper'

class DevelopmentOrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get development_orders_index_url
    assert_response :success
  end

  test "should get show" do
    get development_orders_show_url
    assert_response :success
  end

  test "should get new" do
    get development_orders_new_url
    assert_response :success
  end

  test "should get edit" do
    get development_orders_edit_url
    assert_response :success
  end

end
