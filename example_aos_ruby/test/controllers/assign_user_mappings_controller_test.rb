require 'test_helper'

class AssignUserMappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign_user_mapping = assign_user_mappings(:one)
  end

  test "should get index" do
    get assign_user_mappings_url
    assert_response :success
  end

  test "should get new" do
    get new_assign_user_mapping_url
    assert_response :success
  end

  test "should create assign_user_mapping" do
    assert_difference('AssignUserMapping.count') do
      post assign_user_mappings_url, params: { assign_user_mapping: { assignment: @assign_user_mapping.assignment, userid: @assign_user_mapping.userid } }
    end

    assert_redirected_to assign_user_mapping_url(AssignUserMapping.last)
  end

  test "should show assign_user_mapping" do
    get assign_user_mapping_url(@assign_user_mapping)
    assert_response :success
  end

  test "should get edit" do
    get edit_assign_user_mapping_url(@assign_user_mapping)
    assert_response :success
  end

  test "should update assign_user_mapping" do
    patch assign_user_mapping_url(@assign_user_mapping), params: { assign_user_mapping: { assignment: @assign_user_mapping.assignment, userid: @assign_user_mapping.userid } }
    assert_redirected_to assign_user_mapping_url(@assign_user_mapping)
  end

  test "should destroy assign_user_mapping" do
    assert_difference('AssignUserMapping.count', -1) do
      delete assign_user_mapping_url(@assign_user_mapping)
    end

    assert_redirected_to assign_user_mappings_url
  end
end
