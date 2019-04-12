require 'test_helper'

class AdminDumpstersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_dumpster = admin_dumpsters(:one)
  end

  test "should get index" do
    get admin_dumpsters_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_dumpster_url
    assert_response :success
  end

  test "should create admin_dumpster" do
    assert_difference('AdminDumpster.count') do
      post admin_dumpsters_url, params: { admin_dumpster: { admin_id: @admin_dumpster.admin_id, post_id: @admin_dumpster.post_id } }
    end

    assert_redirected_to admin_dumpster_url(AdminDumpster.last)
  end

  test "should show admin_dumpster" do
    get admin_dumpster_url(@admin_dumpster)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_dumpster_url(@admin_dumpster)
    assert_response :success
  end

  test "should update admin_dumpster" do
    patch admin_dumpster_url(@admin_dumpster), params: { admin_dumpster: { admin_id: @admin_dumpster.admin_id, post_id: @admin_dumpster.post_id } }
    assert_redirected_to admin_dumpster_url(@admin_dumpster)
  end

  test "should destroy admin_dumpster" do
    assert_difference('AdminDumpster.count', -1) do
      delete admin_dumpster_url(@admin_dumpster)
    end

    assert_redirected_to admin_dumpsters_url
  end
end
