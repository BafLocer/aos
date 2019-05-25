require 'test_helper'

class AssignfeedbackEditpdfQueuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignfeedback_editpdf_queue = assignfeedback_editpdf_queues(:one)
  end

  test "should get index" do
    get assignfeedback_editpdf_queues_url
    assert_response :success
  end

  test "should get new" do
    get new_assignfeedback_editpdf_queue_url
    assert_response :success
  end

  test "should create assignfeedback_editpdf_queue" do
    assert_difference('AssignfeedbackEditpdfQueue.count') do
      post assignfeedback_editpdf_queues_url, params: { assignfeedback_editpdf_queue: { submissionattempt: @assignfeedback_editpdf_queue.submissionattempt, submissionid: @assignfeedback_editpdf_queue.submissionid } }
    end

    assert_redirected_to assignfeedback_editpdf_queue_url(AssignfeedbackEditpdfQueue.last)
  end

  test "should show assignfeedback_editpdf_queue" do
    get assignfeedback_editpdf_queue_url(@assignfeedback_editpdf_queue)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignfeedback_editpdf_queue_url(@assignfeedback_editpdf_queue)
    assert_response :success
  end

  test "should update assignfeedback_editpdf_queue" do
    patch assignfeedback_editpdf_queue_url(@assignfeedback_editpdf_queue), params: { assignfeedback_editpdf_queue: { submissionattempt: @assignfeedback_editpdf_queue.submissionattempt, submissionid: @assignfeedback_editpdf_queue.submissionid } }
    assert_redirected_to assignfeedback_editpdf_queue_url(@assignfeedback_editpdf_queue)
  end

  test "should destroy assignfeedback_editpdf_queue" do
    assert_difference('AssignfeedbackEditpdfQueue.count', -1) do
      delete assignfeedback_editpdf_queue_url(@assignfeedback_editpdf_queue)
    end

    assert_redirected_to assignfeedback_editpdf_queues_url
  end
end
