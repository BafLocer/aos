require 'test_helper'

class AssignmentUpgradesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignment_upgrade = assignment_upgrades(:one)
  end

  test "should get index" do
    get assignment_upgrades_url
    assert_response :success
  end

  test "should get new" do
    get new_assignment_upgrade_url
    assert_response :success
  end

  test "should create assignment_upgrade" do
    assert_difference('AssignmentUpgrade.count') do
      post assignment_upgrades_url, params: { assignment_upgrade: { newcmid: @assignment_upgrade.newcmid, newinstance: @assignment_upgrade.newinstance, oldcmid: @assignment_upgrade.oldcmid, oldinstance: @assignment_upgrade.oldinstance, timecreated: @assignment_upgrade.timecreated } }
    end

    assert_redirected_to assignment_upgrade_url(AssignmentUpgrade.last)
  end

  test "should show assignment_upgrade" do
    get assignment_upgrade_url(@assignment_upgrade)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignment_upgrade_url(@assignment_upgrade)
    assert_response :success
  end

  test "should update assignment_upgrade" do
    patch assignment_upgrade_url(@assignment_upgrade), params: { assignment_upgrade: { newcmid: @assignment_upgrade.newcmid, newinstance: @assignment_upgrade.newinstance, oldcmid: @assignment_upgrade.oldcmid, oldinstance: @assignment_upgrade.oldinstance, timecreated: @assignment_upgrade.timecreated } }
    assert_redirected_to assignment_upgrade_url(@assignment_upgrade)
  end

  test "should destroy assignment_upgrade" do
    assert_difference('AssignmentUpgrade.count', -1) do
      delete assignment_upgrade_url(@assignment_upgrade)
    end

    assert_redirected_to assignment_upgrades_url
  end
end
