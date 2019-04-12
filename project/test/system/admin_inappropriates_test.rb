require "application_system_test_case"

class AdminInappropriatesTest < ApplicationSystemTestCase
  setup do
    @admin_inappropriate = admin_inappropriates(:one)
  end

  test "visiting the index" do
    visit admin_inappropriates_url
    assert_selector "h1", text: "Admin Inappropriates"
  end

  test "creating a Admin inappropriate" do
    visit admin_inappropriates_url
    click_on "New Admin Inappropriate"

    fill_in "Admin", with: @admin_inappropriate.admin_id
    fill_in "Post", with: @admin_inappropriate.post_id
    click_on "Create Admin inappropriate"

    assert_text "Admin inappropriate was successfully created"
    click_on "Back"
  end

  test "updating a Admin inappropriate" do
    visit admin_inappropriates_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @admin_inappropriate.admin_id
    fill_in "Post", with: @admin_inappropriate.post_id
    click_on "Update Admin inappropriate"

    assert_text "Admin inappropriate was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin inappropriate" do
    visit admin_inappropriates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin inappropriate was successfully destroyed"
  end
end
