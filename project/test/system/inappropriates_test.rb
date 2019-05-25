require "application_system_test_case"

class InappropriatesTest < ApplicationSystemTestCase
  setup do
    @inappropriate = inappropriates(:one)
  end

  test "visiting the index" do
    visit inappropriates_url
    assert_selector "h1", text: "Inappropriates"
  end

  test "creating a Inappropriate" do
    visit inappropriates_url
    click_on "New Inappropriate"

    fill_in "Post", with: @inappropriate.post_id
    fill_in "Registred user", with: @inappropriate.registred_user_id
    click_on "Create Inappropriate"

    assert_text "Inappropriate was successfully created"
    click_on "Back"
  end

  test "updating a Inappropriate" do
    visit inappropriates_url
    click_on "Edit", match: :first

    fill_in "Post", with: @inappropriate.post_id
    fill_in "Registred user", with: @inappropriate.registred_user_id
    click_on "Update Inappropriate"

    assert_text "Inappropriate was successfully updated"
    click_on "Back"
  end

  test "destroying a Inappropriate" do
    visit inappropriates_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inappropriate was successfully destroyed"
  end
end
