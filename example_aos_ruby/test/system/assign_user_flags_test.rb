require "application_system_test_case"

class AssignUserFlagsTest < ApplicationSystemTestCase
  setup do
    @assign_user_flag = assign_user_flags(:one)
  end

  test "visiting the index" do
    visit assign_user_flags_url
    assert_selector "h1", text: "Assign User Flags"
  end

  test "creating a Assign user flag" do
    visit assign_user_flags_url
    click_on "New Assign User Flag"

    fill_in "Allocatedmarker", with: @assign_user_flag.allocatedmarker
    fill_in "Assignment", with: @assign_user_flag.assignment
    fill_in "Extensionduedate", with: @assign_user_flag.extensionduedate
    fill_in "Locked", with: @assign_user_flag.locked
    fill_in "Mailed", with: @assign_user_flag.mailed
    fill_in "Userid", with: @assign_user_flag.userid
    fill_in "Workflowstate", with: @assign_user_flag.workflowstate
    click_on "Create Assign user flag"

    assert_text "Assign user flag was successfully created"
    click_on "Back"
  end

  test "updating a Assign user flag" do
    visit assign_user_flags_url
    click_on "Edit", match: :first

    fill_in "Allocatedmarker", with: @assign_user_flag.allocatedmarker
    fill_in "Assignment", with: @assign_user_flag.assignment
    fill_in "Extensionduedate", with: @assign_user_flag.extensionduedate
    fill_in "Locked", with: @assign_user_flag.locked
    fill_in "Mailed", with: @assign_user_flag.mailed
    fill_in "Userid", with: @assign_user_flag.userid
    fill_in "Workflowstate", with: @assign_user_flag.workflowstate
    click_on "Update Assign user flag"

    assert_text "Assign user flag was successfully updated"
    click_on "Back"
  end

  test "destroying a Assign user flag" do
    visit assign_user_flags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assign user flag was successfully destroyed"
  end
end
