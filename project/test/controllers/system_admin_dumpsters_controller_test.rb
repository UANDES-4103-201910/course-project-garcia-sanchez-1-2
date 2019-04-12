require 'test_helper'

class SystemAdminDumpstersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @system_admin_dumpster = system_admin_dumpsters(:one)
  end

  test "should get index" do
    get system_admin_dumpsters_url
    assert_response :success
  end

  test "should get new" do
    get new_system_admin_dumpster_url
    assert_response :success
  end

  test "should create system_admin_dumpster" do
    assert_difference('SystemAdminDumpster.count') do
      post system_admin_dumpsters_url, params: { system_admin_dumpster: { post_id: @system_admin_dumpster.post_id, system_admin_id: @system_admin_dumpster.system_admin_id } }
    end

    assert_redirected_to system_admin_dumpster_url(SystemAdminDumpster.last)
  end

  test "should show system_admin_dumpster" do
    get system_admin_dumpster_url(@system_admin_dumpster)
    assert_response :success
  end

  test "should get edit" do
    get edit_system_admin_dumpster_url(@system_admin_dumpster)
    assert_response :success
  end

  test "should update system_admin_dumpster" do
    patch system_admin_dumpster_url(@system_admin_dumpster), params: { system_admin_dumpster: { post_id: @system_admin_dumpster.post_id, system_admin_id: @system_admin_dumpster.system_admin_id } }
    assert_redirected_to system_admin_dumpster_url(@system_admin_dumpster)
  end

  test "should destroy system_admin_dumpster" do
    assert_difference('SystemAdminDumpster.count', -1) do
      delete system_admin_dumpster_url(@system_admin_dumpster)
    end

    assert_redirected_to system_admin_dumpsters_url
  end
end
