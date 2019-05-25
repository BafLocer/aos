require "application_system_test_case"

class AssignfeedbackFilesTest < ApplicationSystemTestCase
  setup do
    @assignfeedback_file = assignfeedback_files(:one)
  end

  test "visiting the index" do
    visit assignfeedback_files_url
    assert_selector "h1", text: "Assignfeedback Files"
  end

  test "creating a Assignfeedback file" do
    visit assignfeedback_files_url
    click_on "New Assignfeedback File"

    fill_in "Assignment", with: @assignfeedback_file.assignment
    fill_in "Grade", with: @assignfeedback_file.grade
    fill_in "Numfiles", with: @assignfeedback_file.numfiles
    click_on "Create Assignfeedback file"

    assert_text "Assignfeedback file was successfully created"
    click_on "Back"
  end

  test "updating a Assignfeedback file" do
    visit assignfeedback_files_url
    click_on "Edit", match: :first

    fill_in "Assignment", with: @assignfeedback_file.assignment
    fill_in "Grade", with: @assignfeedback_file.grade
    fill_in "Numfiles", with: @assignfeedback_file.numfiles
    click_on "Update Assignfeedback file"

    assert_text "Assignfeedback file was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignfeedback file" do
    visit assignfeedback_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignfeedback file was successfully destroyed"
  end
end
