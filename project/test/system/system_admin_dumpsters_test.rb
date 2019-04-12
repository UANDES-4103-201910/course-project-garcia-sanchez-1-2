require "application_system_test_case"

class SystemAdminDumpstersTest < ApplicationSystemTestCase
  setup do
    @system_admin_dumpster = system_admin_dumpsters(:one)
  end

  test "visiting the index" do
    visit system_admin_dumpsters_url
    assert_selector "h1", text: "System Admin Dumpsters"
  end

  test "creating a System admin dumpster" do
    visit system_admin_dumpsters_url
    click_on "New System Admin Dumpster"

    fill_in "Post", with: @system_admin_dumpster.post_id
    fill_in "System admin", with: @system_admin_dumpster.system_admin_id
    click_on "Create System admin dumpster"

    assert_text "System admin dumpster was successfully created"
    click_on "Back"
  end

  test "updating a System admin dumpster" do
    visit system_admin_dumpsters_url
    click_on "Edit", match: :first

    fill_in "Post", with: @system_admin_dumpster.post_id
    fill_in "System admin", with: @system_admin_dumpster.system_admin_id
    click_on "Update System admin dumpster"

    assert_text "System admin dumpster was successfully updated"
    click_on "Back"
  end

  test "destroying a System admin dumpster" do
    visit system_admin_dumpsters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "System admin dumpster was successfully destroyed"
  end
end
