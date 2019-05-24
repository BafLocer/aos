require 'test_helper'

class AssignUserFlagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign_user_flag = assign_user_flags(:one)
  end

  test "should get index" do
    get assign_user_flags_url
    assert_response :success
  end

  test "should get new" do
    get new_assign_user_flag_url
    assert_response :success
  end

  test "should create assign_user_flag" do
    assert_difference('AssignUserFlag.count') do
      post assign_user_flags_url, params: { assign_user_flag: { allocatedmarker: @assign_user_flag.allocatedmarker, assignment: @assign_user_flag.assignment, extensionduedate: @assign_user_flag.extensionduedate, locked: @assign_user_flag.locked, mailed: @assign_user_flag.mailed, userid: @assign_user_flag.userid, workflowstate: @assign_user_flag.workflowstate } }
    end

    assert_redirected_to assign_user_flag_url(AssignUserFlag.last)
  end

  test "should show assign_user_flag" do
    get assign_user_flag_url(@assign_user_flag)
    assert_response :success
  end

  test "should get edit" do
    get edit_assign_user_flag_url(@assign_user_flag)
    assert_response :success
  end

  test "should update assign_user_flag" do
    patch assign_user_flag_url(@assign_user_flag), params: { assign_user_flag: { allocatedmarker: @assign_user_flag.allocatedmarker, assignment: @assign_user_flag.assignment, extensionduedate: @assign_user_flag.extensionduedate, locked: @assign_user_flag.locked, mailed: @assign_user_flag.mailed, userid: @assign_user_flag.userid, workflowstate: @assign_user_flag.workflowstate } }
    assert_redirected_to assign_user_flag_url(@assign_user_flag)
  end

  test "should destroy assign_user_flag" do
    assert_difference('AssignUserFlag.count', -1) do
      delete assign_user_flag_url(@assign_user_flag)
    end

    assert_redirected_to assign_user_flags_url
  end
end
