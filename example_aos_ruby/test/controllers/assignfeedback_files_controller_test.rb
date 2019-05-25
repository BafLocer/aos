require 'test_helper'

class AssignfeedbackFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignfeedback_file = assignfeedback_files(:one)
  end

  test "should get index" do
    get assignfeedback_files_url
    assert_response :success
  end

  test "should get new" do
    get new_assignfeedback_file_url
    assert_response :success
  end

  test "should create assignfeedback_file" do
    assert_difference('AssignfeedbackFile.count') do
      post assignfeedback_files_url, params: { assignfeedback_file: { assignment: @assignfeedback_file.assignment, grade: @assignfeedback_file.grade, numfiles: @assignfeedback_file.numfiles } }
    end

    assert_redirected_to assignfeedback_file_url(AssignfeedbackFile.last)
  end

  test "should show assignfeedback_file" do
    get assignfeedback_file_url(@assignfeedback_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignfeedback_file_url(@assignfeedback_file)
    assert_response :success
  end

  test "should update assignfeedback_file" do
    patch assignfeedback_file_url(@assignfeedback_file), params: { assignfeedback_file: { assignment: @assignfeedback_file.assignment, grade: @assignfeedback_file.grade, numfiles: @assignfeedback_file.numfiles } }
    assert_redirected_to assignfeedback_file_url(@assignfeedback_file)
  end

  test "should destroy assignfeedback_file" do
    assert_difference('AssignfeedbackFile.count', -1) do
      delete assignfeedback_file_url(@assignfeedback_file)
    end

    assert_redirected_to assignfeedback_files_url
  end
end
