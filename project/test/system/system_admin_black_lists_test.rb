require "application_system_test_case"

class SystemAdminBlackListsTest < ApplicationSystemTestCase
  setup do
    @system_admin_black_list = system_admin_black_lists(:one)
  end

  test "visiting the index" do
    visit system_admin_black_lists_url
    assert_selector "h1", text: "System Admin Black Lists"
  end

  test "creating a System admin black list" do
    visit system_admin_black_lists_url
    click_on "New System Admin Black List"

    fill_in "System admin", with: @system_admin_black_list.system_admin_id
    fill_in "User", with: @system_admin_black_list.user_id
    click_on "Create System admin black list"

    assert_text "System admin black list was successfully created"
    click_on "Back"
  end

  test "updating a System admin black list" do
    visit system_admin_black_lists_url
    click_on "Edit", match: :first

    fill_in "System admin", with: @system_admin_black_list.system_admin_id
    fill_in "User", with: @system_admin_black_list.user_id
    click_on "Update System admin black list"

    assert_text "System admin black list was successfully updated"
    click_on "Back"
  end

  test "destroying a System admin black list" do
    visit system_admin_black_lists_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System admin black list was successfully destroyed"
  end
end
