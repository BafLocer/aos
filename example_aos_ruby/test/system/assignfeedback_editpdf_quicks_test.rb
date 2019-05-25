require "application_system_test_case"

class AssignfeedbackEditpdfQuicksTest < ApplicationSystemTestCase
  setup do
    @assignfeedback_editpdf_quick = assignfeedback_editpdf_quicks(:one)
  end

  test "visiting the index" do
    visit assignfeedback_editpdf_quicks_url
    assert_selector "h1", text: "Assignfeedback Editpdf Quicks"
  end

  test "creating a Assignfeedback editpdf quick" do
    visit assignfeedback_editpdf_quicks_url
    click_on "New Assignfeedback Editpdf Quick"

    fill_in "Colour", with: @assignfeedback_editpdf_quick.colour
    fill_in "Rawtext", with: @assignfeedback_editpdf_quick.rawtext
    fill_in "Userid", with: @assignfeedback_editpdf_quick.userid
    fill_in "Width", with: @assignfeedback_editpdf_quick.width
    click_on "Create Assignfeedback editpdf quick"

    assert_text "Assignfeedback editpdf quick was successfully created"
    click_on "Back"
  end

  test "updating a Assignfeedback editpdf quick" do
    visit assignfeedback_editpdf_quicks_url
    click_on "Edit", match: :first

    fill_in "Colour", with: @assignfeedback_editpdf_quick.colour
    fill_in "Rawtext", with: @assignfeedback_editpdf_quick.rawtext
    fill_in "Userid", with: @assignfeedback_editpdf_quick.userid
    fill_in "Width", with: @assignfeedback_editpdf_quick.width
    click_on "Update Assignfeedback editpdf quick"

    assert_text "Assignfeedback editpdf quick was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignfeedback editpdf quick" do
    visit assignfeedback_editpdf_quicks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignfeedback editpdf quick was successfully destroyed"
  end
end
