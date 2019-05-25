require "application_system_test_case"

class AssignfeedbackEditpdfQueuesTest < ApplicationSystemTestCase
  setup do
    @assignfeedback_editpdf_queue = assignfeedback_editpdf_queues(:one)
  end

  test "visiting the index" do
    visit assignfeedback_editpdf_queues_url
    assert_selector "h1", text: "Assignfeedback Editpdf Queues"
  end

  test "creating a Assignfeedback editpdf queue" do
    visit assignfeedback_editpdf_queues_url
    click_on "New Assignfeedback Editpdf Queue"

    fill_in "Submissionattempt", with: @assignfeedback_editpdf_queue.submissionattempt
    fill_in "Submissionid", with: @assignfeedback_editpdf_queue.submissionid
    click_on "Create Assignfeedback editpdf queue"

    assert_text "Assignfeedback editpdf queue was successfully created"
    click_on "Back"
  end

  test "updating a Assignfeedback editpdf queue" do
    visit assignfeedback_editpdf_queues_url
    click_on "Edit", match: :first

    fill_in "Submissionattempt", with: @assignfeedback_editpdf_queue.submissionattempt
    fill_in "Submissionid", with: @assignfeedback_editpdf_queue.submissionid
    click_on "Update Assignfeedback editpdf queue"

    assert_text "Assignfeedback editpdf queue was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignfeedback editpdf queue" do
    visit assignfeedback_editpdf_queues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignfeedback editpdf queue was successfully destroyed"
  end
end
