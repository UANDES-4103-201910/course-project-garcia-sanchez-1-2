require 'test_helper'

class RegistredUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registred_user = registred_users(:one)
  end

  test "should get index" do
    get registred_users_url
    assert_response :success
  end

  test "should get new" do
    get new_registred_user_url
    assert_response :success
  end

  test "should create registred_user" do
    assert_difference('RegistredUser.count') do
      post registred_users_url, params: { registred_user: { mail: @registred_user.mail, password: @registred_user.password, username: @registred_user.username } }
    end

    assert_redirected_to registred_user_url(RegistredUser.last)
  end

  test "should show registred_user" do
    get registred_user_url(@registred_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_registred_user_url(@registred_user)
    assert_response :success
  end

  test "should update registred_user" do
    patch registred_user_url(@registred_user), params: { registred_user: { mail: @registred_user.mail, password: @registred_user.password, username: @registred_user.username } }
    assert_redirected_to registred_user_url(@registred_user)
  end

  test "should destroy registred_user" do
    assert_difference('RegistredUser.count', -1) do
      delete registred_user_url(@registred_user)
    end

    assert_redirected_to registred_users_url
  end
end
