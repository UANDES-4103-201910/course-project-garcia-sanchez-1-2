require "application_system_test_case"

class UserInappropriatesTest < ApplicationSystemTestCase
  setup do
    @user_inappropriate = user_inappropriates(:one)
  end

  test "visiting the index" do
    visit user_inappropriates_url
    assert_selector "h1", text: "User Inappropriates"
  end

  test "creating a User inappropriate" do
    visit user_inappropriates_url
    click_on "New User Inappropriate"

    fill_in "Post", with: @user_inappropriate.post_id
    fill_in "User", with: @user_inappropriate.user_id
    click_on "Create User inappropriate"

    assert_text "User inappropriate was successfully created"
    click_on "Back"
  end

  test "updating a User inappropriate" do
    visit user_inappropriates_url
    click_on "Edit", match: :first

    fill_in "Post", with: @user_inappropriate.post_id
    fill_in "User", with: @user_inappropriate.user_id
    click_on "Update User inappropriate"

    assert_text "User inappropriate was successfully updated"
    click_on "Back"
  end

  test "destroying a User inappropriate" do
    visit user_inappropriates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User inappropriate was successfully destroyed"
  end
end
