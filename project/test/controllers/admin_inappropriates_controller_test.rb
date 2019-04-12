require 'test_helper'

class AdminInappropriatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_inappropriate = admin_inappropriates(:one)
  end

  test "should get index" do
    get admin_inappropriates_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_inappropriate_url
    assert_response :success
  end

  test "should create admin_inappropriate" do
    assert_difference('AdminInappropriate.count') do
      post admin_inappropriates_url, params: { admin_inappropriate: { admin_id: @admin_inappropriate.admin_id, post_id: @admin_inappropriate.post_id } }
    end

    assert_redirected_to admin_inappropriate_url(AdminInappropriate.last)
  end

  test "should show admin_inappropriate" do
    get admin_inappropriate_url(@admin_inappropriate)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_inappropriate_url(@admin_inappropriate)
    assert_response :success
  end

  test "should update admin_inappropriate" do
    patch admin_inappropriate_url(@admin_inappropriate), params: { admin_inappropriate: { admin_id: @admin_inappropriate.admin_id, post_id: @admin_inappropriate.post_id } }
    assert_redirected_to admin_inappropriate_url(@admin_inappropriate)
  end

  test "should destroy admin_inappropriate" do
    assert_difference('AdminInappropriate.count', -1) do
      delete admin_inappropriate_url(@admin_inappropriate)
    end

    assert_redirected_to admin_inappropriates_url
  end
end
