require 'test_helper'

class SystemAdminBlackListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_admin_black_list = system_admin_black_lists(:one)
  end

  test "should get index" do
    get system_admin_black_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_system_admin_black_list_url
    assert_response :success
  end

  test "should create system_admin_black_list" do
    assert_difference('SystemAdminBlackList.count') do
      post system_admin_black_lists_url, params: { system_admin_black_list: { system_admin_id: @system_admin_black_list.system_admin_id, user_id: @system_admin_black_list.user_id } }
    end

    assert_redirected_to system_admin_black_list_url(SystemAdminBlackList.last)
  end

  test "should show system_admin_black_list" do
    get system_admin_black_list_url(@system_admin_black_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_admin_black_list_url(@system_admin_black_list)
    assert_response :success
  end

  test "should update system_admin_black_list" do
    patch system_admin_black_list_url(@system_admin_black_list), params: { system_admin_black_list: { system_admin_id: @system_admin_black_list.system_admin_id, user_id: @system_admin_black_list.user_id } }
    assert_redirected_to system_admin_black_list_url(@system_admin_black_list)
  end

  test "should destroy system_admin_black_list" do
    assert_difference('SystemAdminBlackList.count', -1) do
      delete system_admin_black_list_url(@system_admin_black_list)
    end

    assert_redirected_to system_admin_black_lists_url
  end
end
