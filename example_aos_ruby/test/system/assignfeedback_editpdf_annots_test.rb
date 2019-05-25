require "application_system_test_case"

class AssignfeedbackEditpdfAnnotsTest < ApplicationSystemTestCase
  setup do
    @assignfeedback_editpdf_annot = assignfeedback_editpdf_annots(:one)
  end

  test "visiting the index" do
    visit assignfeedback_editpdf_annots_url
    assert_selector "h1", text: "Assignfeedback Editpdf Annots"
  end

  test "creating a Assignfeedback editpdf annot" do
    visit assignfeedback_editpdf_annots_url
    click_on "New Assignfeedback Editpdf Annot"

    fill_in "Colour", with: @assignfeedback_editpdf_annot.colour
    fill_in "Draft", with: @assignfeedback_editpdf_annot.draft
    fill_in "Endx", with: @assignfeedback_editpdf_annot.endx
    fill_in "Endy", with: @assignfeedback_editpdf_annot.endy
    fill_in "Gradeid", with: @assignfeedback_editpdf_annot.gradeid
    fill_in "Pageno", with: @assignfeedback_editpdf_annot.pageno
    fill_in "Path", with: @assignfeedback_editpdf_annot.path
    fill_in "Type", with: @assignfeedback_editpdf_annot.type
    fill_in "X", with: @assignfeedback_editpdf_annot.x
    fill_in "Y", with: @assignfeedback_editpdf_annot.y
    click_on "Create Assignfeedback editpdf annot"

    assert_text "Assignfeedback editpdf annot was successfully created"
    click_on "Back"
  end

  test "updating a Assignfeedback editpdf annot" do
    visit assignfeedback_editpdf_annots_url
    click_on "Edit", match: :first

    fill_in "Colour", with: @assignfeedback_editpdf_annot.colour
    fill_in "Draft", with: @assignfeedback_editpdf_annot.draft
    fill_in "Endx", with: @assignfeedback_editpdf_annot.endx
    fill_in "Endy", with: @assignfeedback_editpdf_annot.endy
    fill_in "Gradeid", with: @assignfeedback_editpdf_annot.gradeid
    fill_in "Pageno", with: @assignfeedback_editpdf_annot.pageno
    fill_in "Path", with: @assignfeedback_editpdf_annot.path
    fill_in "Type", with: @assignfeedback_editpdf_annot.type
    fill_in "X", with: @assignfeedback_editpdf_annot.x
    fill_in "Y", with: @assignfeedback_editpdf_annot.y
    click_on "Update Assignfeedback editpdf annot"

    assert_text "Assignfeedback editpdf annot was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignfeedback editpdf annot" do
    visit assignfeedback_editpdf_annots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignfeedback editpdf annot was successfully destroyed"
  end
end
