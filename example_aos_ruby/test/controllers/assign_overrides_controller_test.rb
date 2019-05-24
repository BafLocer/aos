require 'test_helper'

class AssignOverridesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign_override = assign_overrides(:one)
  end

  test "should get index" do
    get assign_overrides_url
    assert_response :success
  end

  test "should get new" do
    get new_assign_override_url
    assert_response :success
  end

  test "should create assign_override" do
    assert_difference('AssignOverride.count') do
      post assign_overrides_url, params: { assign_override: { allowsubmissionsfromdate: @assign_override.allowsubmissionsfromdate, assignid: @assign_override.assignid, cutoffdate: @assign_override.cutoffdate, duedate: @assign_override.duedate, groupid: @assign_override.groupid, sortorder: @assign_override.sortorder, userid: @assign_override.userid } }
    end

    assert_redirected_to assign_override_url(AssignOverride.last)
  end

  test "should show assign_override" do
    get assign_override_url(@assign_override)
    assert_response :success
  end

  test "should get edit" do
    get edit_assign_override_url(@assign_override)
    assert_response :success
  end

  test "should update assign_override" do
    patch assign_override_url(@assign_override), params: { assign_override: { allowsubmissionsfromdate: @assign_override.allowsubmissionsfromdate, assignid: @assign_override.assignid, cutoffdate: @assign_override.cutoffdate, duedate: @assign_override.duedate, groupid: @assign_override.groupid, sortorder: @assign_override.sortorder, userid: @assign_override.userid } }
    assert_redirected_to assign_override_url(@assign_override)
  end

  test "should destroy assign_override" do
    assert_difference('AssignOverride.count', -1) do
      delete assign_override_url(@assign_override)
    end

    assert_redirected_to assign_overrides_url
  end
end
