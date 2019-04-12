require "application_system_test_case"

class SystemAdminInappropriatesTest < ApplicationSystemTestCase
  setup do
    @system_admin_inappropriate = system_admin_inappropriates(:one)
  end

  test "visiting the index" do
    visit system_admin_inappropriates_url
    assert_selector "h1", text: "System Admin Inappropriates"
  end

  test "creating a System admin inappropriate" do
    visit system_admin_inappropriates_url
    click_on "New System Admin Inappropriate"

    fill_in "Post", with: @system_admin_inappropriate.post_id
    fill_in "System admin", with: @system_admin_inappropriate.system_admin_id
    click_on "Create System admin inappropriate"

    assert_text "System admin inappropriate was successfully created"
    click_on "Back"
  end

  test "updating a System admin inappropriate" do
    visit system_admin_inappropriates_url
    click_on "Edit", match: :first

    fill_in "Post", with: @system_admin_inappropriate.post_id
    fill_in "System admin", with: @system_admin_inappropriate.system_admin_id
    click_on "Update System admin inappropriate"

    assert_text "System admin inappropriate was successfully updated"
    click_on "Back"
  end

  test "destroying a System admin inappropriate" do
    visit system_admin_inappropriates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System admin inappropriate was successfully destroyed"
  end
end
