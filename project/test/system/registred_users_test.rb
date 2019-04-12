require "application_system_test_case"

class RegistredUsersTest < ApplicationSystemTestCase
  setup do
    @registred_user = registred_users(:one)
  end

  test "visiting the index" do
    visit registred_users_url
    assert_selector "h1", text: "Registred Users"
  end

  test "creating a Registred user" do
    visit registred_users_url
    click_on "New Registred User"

    fill_in "Mail", with: @registred_user.mail
    fill_in "Password", with: @registred_user.password
    fill_in "Username", with: @registred_user.username
    click_on "Create Registred user"

    assert_text "Registred user was successfully created"
    click_on "Back"
  end

  test "updating a Registred user" do
    visit registred_users_url
    click_on "Edit", match: :first

    fill_in "Mail", with: @registred_user.mail
    fill_in "Password", with: @registred_user.password
    fill_in "Username", with: @registred_user.username
    click_on "Update Registred user"

    assert_text "Registred user was successfully updated"
    click_on "Back"
  end

  test "destroying a Registred user" do
    visit registred_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Registred user was successfully destroyed"
  end
end
