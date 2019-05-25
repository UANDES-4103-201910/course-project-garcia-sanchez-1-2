require 'test_helper'

class InappropriatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inappropriate = inappropriates(:one)
  end

  test "should get index" do
    get inappropriates_url
    assert_response :success
  end

  test "should get new" do
    get new_inappropriate_url
    assert_response :success
  end

  test "should create inappropriate" do
    assert_difference('Inappropriate.count') do
      post inappropriates_url, params: { inappropriate: { post_id: @inappropriate.post_id, registred_user_id: @inappropriate.registred_user_id } }
    end

    assert_redirected_to inappropriate_url(Inappropriate.last)
  end

  test "should show inappropriate" do
    get inappropriate_url(@inappropriate)
    assert_response :success
  end

  test "should get edit" do
    get edit_inappropriate_url(@inappropriate)
    assert_response :success
  end

  test "should update inappropriate" do
    patch inappropriate_url(@inappropriate), params: { inappropriate: { post_id: @inappropriate.post_id, registred_user_id: @inappropriate.registred_user_id } }
    assert_redirected_to inappropriate_url(@inappropriate)
  end

  test "should destroy inappropriate" do
    assert_difference('Inappropriate.count', -1) do
      delete inappropriate_url(@inappropriate)
    end

    assert_redirected_to inappropriates_url
  end
end
