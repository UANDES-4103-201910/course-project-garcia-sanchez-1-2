require "application_system_test_case"

class CommentImagesTest < ApplicationSystemTestCase
  setup do
    @comment_image = comment_images(:one)
  end

  test "visiting the index" do
    visit comment_images_url
    assert_selector "h1", text: "Comment Images"
  end

  test "creating a Comment image" do
    visit comment_images_url
    click_on "New Comment Image"

    fill_in "Comment", with: @comment_image.comment_id
    fill_in "Link", with: @comment_image.link
    click_on "Create Comment image"

    assert_text "Comment image was successfully created"
    click_on "Back"
  end

  test "updating a Comment image" do
    visit comment_images_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @comment_image.comment_id
    fill_in "Link", with: @comment_image.link
    click_on "Update Comment image"

    assert_text "Comment image was successfully updated"
    click_on "Back"
  end

  test "destroying a Comment image" do
    visit comment_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Comment image was successfully destroyed"
  end
end
