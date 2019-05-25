require "application_system_test_case"

class AssignfeedbackCommentsTest < ApplicationSystemTestCase
  setup do
    @assignfeedback_comment = assignfeedback_comments(:one)
  end

  test "visiting the index" do
    visit assignfeedback_comments_url
    assert_selector "h1", text: "Assignfeedback Comments"
  end

  test "creating a Assignfeedback comment" do
    visit assignfeedback_comments_url
    click_on "New Assignfeedback Comment"

    fill_in "Assignment", with: @assignfeedback_comment.assignment
    fill_in "Commentformat", with: @assignfeedback_comment.commentformat
    fill_in "Commenttext", with: @assignfeedback_comment.commenttext
    fill_in "Grade", with: @assignfeedback_comment.grade
    click_on "Create Assignfeedback comment"

    assert_text "Assignfeedback comment was successfully created"
    click_on "Back"
  end

  test "updating a Assignfeedback comment" do
    visit assignfeedback_comments_url
    click_on "Edit", match: :first

    fill_in "Assignment", with: @assignfeedback_comment.assignment
    fill_in "Commentformat", with: @assignfeedback_comment.commentformat
    fill_in "Commenttext", with: @assignfeedback_comment.commenttext
    fill_in "Grade", with: @assignfeedback_comment.grade
    click_on "Update Assignfeedback comment"

    assert_text "Assignfeedback comment was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignfeedback comment" do
    visit assignfeedback_comments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignfeedback comment was successfully destroyed"
  end
end
