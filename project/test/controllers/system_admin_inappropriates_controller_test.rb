require 'test_helper'

class SystemAdminInappropriatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_admin_inappropriate = system_admin_inappropriates(:one)
  end

  test "should get index" do
    get system_admin_inappropriates_url
    assert_response :success
  end

  test "should get new" do
    get new_system_admin_inappropriate_url
    assert_response :success
  end

  test "should create system_admin_inappropriate" do
    assert_difference('SystemAdminInappropriate.count') do
      post system_admin_inappropriates_url, params: { system_admin_inappropriate: { post_id: @system_admin_inappropriate.post_id, system_admin_id: @system_admin_inappropriate.system_admin_id } }
    end

    assert_redirected_to system_admin_inappropriate_url(SystemAdminInappropriate.last)
  end

  test "should show system_admin_inappropriate" do
    get system_admin_inappropriate_url(@system_admin_inappropriate)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_admin_inappropriate_url(@system_admin_inappropriate)
    assert_response :success
  end

  test "should update system_admin_inappropriate" do
    patch system_admin_inappropriate_url(@system_admin_inappropriate), params: { system_admin_inappropriate: { post_id: @system_admin_inappropriate.post_id, system_admin_id: @system_admin_inappropriate.system_admin_id } }
    assert_redirected_to system_admin_inappropriate_url(@system_admin_inappropriate)
  end

  test "should destroy system_admin_inappropriate" do
    assert_difference('SystemAdminInappropriate.count', -1) do
      delete system_admin_inappropriate_url(@system_admin_inappropriate)
    end

    assert_redirected_to system_admin_inappropriates_url
  end
end
