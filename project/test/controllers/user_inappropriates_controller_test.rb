require 'test_helper'

class UserInappropriatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_inappropriate = user_inappropriates(:one)
  end

  test "should get index" do
    get user_inappropriates_url
    assert_response :success
  end

  test "should get new" do
    get new_user_inappropriate_url
    assert_response :success
  end

  test "should create user_inappropriate" do
    assert_difference('UserInappropriate.count') do
      post user_inappropriates_url, params: { user_inappropriate: { post_id: @user_inappropriate.post_id, user_id: @user_inappropriate.user_id } }
    end

    assert_redirected_to user_inappropriate_url(UserInappropriate.last)
  end

  test "should show user_inappropriate" do
    get user_inappropriate_url(@user_inappropriate)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_inappropriate_url(@user_inappropriate)
    assert_response :success
  end

  test "should update user_inappropriate" do
    patch user_inappropriate_url(@user_inappropriate), params: { user_inappropriate: { post_id: @user_inappropriate.post_id, user_id: @user_inappropriate.user_id } }
    assert_redirected_to user_inappropriate_url(@user_inappropriate)
  end

  test "should destroy user_inappropriate" do
    assert_difference('UserInappropriate.count', -1) do
      delete user_inappropriate_url(@user_inappropriate)
    end

    assert_redirected_to user_inappropriates_url
  end
end
