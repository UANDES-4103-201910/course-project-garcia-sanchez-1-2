require 'test_helper'

class CommentImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @comment_image = comment_images(:one)
  end

  test "should get index" do
    get comment_images_url
    assert_response :success
  end

  test "should get new" do
    get new_comment_image_url
    assert_response :success
  end

  test "should create comment_image" do
    assert_difference('CommentImage.count') do
      post comment_images_url, params: { comment_image: { comment_id: @comment_image.comment_id, link: @comment_image.link } }
    end

    assert_redirected_to comment_image_url(CommentImage.last)
  end

  test "should show comment_image" do
    get comment_image_url(@comment_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_comment_image_url(@comment_image)
    assert_response :success
  end

  test "should update comment_image" do
    patch comment_image_url(@comment_image), params: { comment_image: { comment_id: @comment_image.comment_id, link: @comment_image.link } }
    assert_redirected_to comment_image_url(@comment_image)
  end

  test "should destroy comment_image" do
    assert_difference('CommentImage.count', -1) do
      delete comment_image_url(@comment_image)
    end

    assert_redirected_to comment_images_url
  end
end
