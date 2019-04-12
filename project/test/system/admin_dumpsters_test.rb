require "application_system_test_case"

class AdminDumpstersTest < ApplicationSystemTestCase
  setup do
    @admin_dumpster = admin_dumpsters(:one)
  end

  test "visiting the index" do
    visit admin_dumpsters_url
    assert_selector "h1", text: "Admin Dumpsters"
  end

  test "creating a Admin dumpster" do
    visit admin_dumpsters_url
    click_on "New Admin Dumpster"

    fill_in "Admin", with: @admin_dumpster.admin_id
    fill_in "Post", with: @admin_dumpster.post_id
    click_on "Create Admin dumpster"

    assert_text "Admin dumpster was successfully created"
    click_on "Back"
  end

  test "updating a Admin dumpster" do
    visit admin_dumpsters_url
    click_on "Edit", match: :first

    fill_in "Admin", with: @admin_dumpster.admin_id
    fill_in "Post", with: @admin_dumpster.post_id
    click_on "Update Admin dumpster"

    assert_text "Admin dumpster was successfully updated"
    click_on "Back"
  end

  test "destroying a Admin dumpster" do
    visit admin_dumpsters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admin dumpster was successfully destroyed"
  end
end
