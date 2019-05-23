require "application_system_test_case"

class EditorAttoAutosavesTest < ApplicationSystemTestCase
  setup do
    @editor_atto_autosafe = editor_atto_autosaves(:one)
  end

  test "visiting the index" do
    visit editor_atto_autosaves_url
    assert_selector "h1", text: "Editor Atto Autosaves"
  end

  test "creating a Editor atto autosave" do
    visit editor_atto_autosaves_url
    click_on "New Editor Atto Autosave"

    fill_in "Contextid", with: @editor_atto_autosafe.contextid
    fill_in "Draftid", with: @editor_atto_autosafe.draftid
    fill_in "Drafttext", with: @editor_atto_autosafe.drafttext
    fill_in "Elementid", with: @editor_atto_autosafe.elementid
    fill_in "Pagehash", with: @editor_atto_autosafe.pagehash
    fill_in "Pageinstance", with: @editor_atto_autosafe.pageinstance
    fill_in "Timemodified", with: @editor_atto_autosafe.timemodified
    fill_in "Userid", with: @editor_atto_autosafe.userid
    click_on "Create Editor atto autosave"

    assert_text "Editor atto autosave was successfully created"
    click_on "Back"
  end

  test "updating a Editor atto autosave" do
    visit editor_atto_autosaves_url
    click_on "Edit", match: :first

    fill_in "Contextid", with: @editor_atto_autosafe.contextid
    fill_in "Draftid", with: @editor_atto_autosafe.draftid
    fill_in "Drafttext", with: @editor_atto_autosafe.drafttext
    fill_in "Elementid", with: @editor_atto_autosafe.elementid
    fill_in "Pagehash", with: @editor_atto_autosafe.pagehash
    fill_in "Pageinstance", with: @editor_atto_autosafe.pageinstance
    fill_in "Timemodified", with: @editor_atto_autosafe.timemodified
    fill_in "Userid", with: @editor_atto_autosafe.userid
    click_on "Update Editor atto autosave"

    assert_text "Editor atto autosave was successfully updated"
    click_on "Back"
  end

  test "destroying a Editor atto autosave" do
    visit editor_atto_autosaves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Editor atto autosave was successfully destroyed"
  end
end
