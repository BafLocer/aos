require 'test_helper'

class AssignfeedbackCommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignfeedback_comment = assignfeedback_comments(:one)
  end

  test "should get index" do
    get assignfeedback_comments_url
    assert_response :success
  end

  test "should get new" do
    get new_assignfeedback_comment_url
    assert_response :success
  end

  test "should create assignfeedback_comment" do
    assert_difference('AssignfeedbackComment.count') do
      post assignfeedback_comments_url, params: { assignfeedback_comment: { assignment: @assignfeedback_comment.assignment, commentformat: @assignfeedback_comment.commentformat, commenttext: @assignfeedback_comment.commenttext, grade: @assignfeedback_comment.grade } }
    end

    assert_redirected_to assignfeedback_comment_url(AssignfeedbackComment.last)
  end

  test "should show assignfeedback_comment" do
    get assignfeedback_comment_url(@assignfeedback_comment)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignfeedback_comment_url(@assignfeedback_comment)
    assert_response :success
  end

  test "should update assignfeedback_comment" do
    patch assignfeedback_comment_url(@assignfeedback_comment), params: { assignfeedback_comment: { assignment: @assignfeedback_comment.assignment, commentformat: @assignfeedback_comment.commentformat, commenttext: @assignfeedback_comment.commenttext, grade: @assignfeedback_comment.grade } }
    assert_redirected_to assignfeedback_comment_url(@assignfeedback_comment)
  end

  test "should destroy assignfeedback_comment" do
    assert_difference('AssignfeedbackComment.count', -1) do
      delete assignfeedback_comment_url(@assignfeedback_comment)
    end

    assert_redirected_to assignfeedback_comments_url
  end
end
