require "application_system_test_case"

class AssignfeedbackEditpdfCmntsTest < ApplicationSystemTestCase
  setup do
    @assignfeedback_editpdf_cmnt = assignfeedback_editpdf_cmnts(:one)
  end

  test "visiting the index" do
    visit assignfeedback_editpdf_cmnts_url
    assert_selector "h1", text: "Assignfeedback Editpdf Cmnts"
  end

  test "creating a Assignfeedback editpdf cmnt" do
    visit assignfeedback_editpdf_cmnts_url
    click_on "New Assignfeedback Editpdf Cmnt"

    fill_in "Colour", with: @assignfeedback_editpdf_cmnt.colour
    fill_in "Draft", with: @assignfeedback_editpdf_cmnt.draft
    fill_in "Gradeid", with: @assignfeedback_editpdf_cmnt.gradeid
    fill_in "Pageno", with: @assignfeedback_editpdf_cmnt.pageno
    fill_in "Rawtext", with: @assignfeedback_editpdf_cmnt.rawtext
    fill_in "Width", with: @assignfeedback_editpdf_cmnt.width
    fill_in "X", with: @assignfeedback_editpdf_cmnt.x
    fill_in "Y", with: @assignfeedback_editpdf_cmnt.y
    click_on "Create Assignfeedback editpdf cmnt"

    assert_text "Assignfeedback editpdf cmnt was successfully created"
    click_on "Back"
  end

  test "updating a Assignfeedback editpdf cmnt" do
    visit assignfeedback_editpdf_cmnts_url
    click_on "Edit", match: :first

    fill_in "Colour", with: @assignfeedback_editpdf_cmnt.colour
    fill_in "Draft", with: @assignfeedback_editpdf_cmnt.draft
    fill_in "Gradeid", with: @assignfeedback_editpdf_cmnt.gradeid
    fill_in "Pageno", with: @assignfeedback_editpdf_cmnt.pageno
    fill_in "Rawtext", with: @assignfeedback_editpdf_cmnt.rawtext
    fill_in "Width", with: @assignfeedback_editpdf_cmnt.width
    fill_in "X", with: @assignfeedback_editpdf_cmnt.x
    fill_in "Y", with: @assignfeedback_editpdf_cmnt.y
    click_on "Update Assignfeedback editpdf cmnt"

    assert_text "Assignfeedback editpdf cmnt was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignfeedback editpdf cmnt" do
    visit assignfeedback_editpdf_cmnts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignfeedback editpdf cmnt was successfully destroyed"
  end
end
