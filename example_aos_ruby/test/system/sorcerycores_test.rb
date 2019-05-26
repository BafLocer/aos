require "application_system_test_case"

class SorcerycoresTest < ApplicationSystemTestCase
  setup do
    @sorcerycore = sorcerycores(:one)
  end

  test "visiting the index" do
    visit sorcerycores_url
    assert_selector "h1", text: "Sorcerycores"
  end

  test "creating a Sorcerycore" do
    visit sorcerycores_url
    click_on "New Sorcerycore"

    fill_in "Crypted password", with: @sorcerycore.crypted_password
    fill_in "Email", with: @sorcerycore.email
    fill_in "Salt", with: @sorcerycore.salt
    click_on "Create Sorcerycore"

    assert_text "Sorcerycore was successfully created"
    click_on "Back"
  end

  test "updating a Sorcerycore" do
    visit sorcerycores_url
    click_on "Edit", match: :first

    fill_in "Crypted password", with: @sorcerycore.crypted_password
    fill_in "Email", with: @sorcerycore.email
    fill_in "Salt", with: @sorcerycore.salt
    click_on "Update Sorcerycore"

    assert_text "Sorcerycore was successfully updated"
    click_on "Back"
  end

  test "destroying a Sorcerycore" do
    visit sorcerycores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sorcerycore was successfully destroyed"
  end
end
