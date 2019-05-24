require "application_system_test_case"

class AssignOverridesTest < ApplicationSystemTestCase
  setup do
    @assign_override = assign_overrides(:one)
  end

  test "visiting the index" do
    visit assign_overrides_url
    assert_selector "h1", text: "Assign Overrides"
  end

  test "creating a Assign override" do
    visit assign_overrides_url
    click_on "New Assign Override"

    fill_in "Allowsubmissionsfromdate", with: @assign_override.allowsubmissionsfromdate
    fill_in "Assignid", with: @assign_override.assignid
    fill_in "Cutoffdate", with: @assign_override.cutoffdate
    fill_in "Duedate", with: @assign_override.duedate
    fill_in "Groupid", with: @assign_override.groupid
    fill_in "Sortorder", with: @assign_override.sortorder
    fill_in "Userid", with: @assign_override.userid
    click_on "Create Assign override"

    assert_text "Assign override was successfully created"
    click_on "Back"
  end

  test "updating a Assign override" do
    visit assign_overrides_url
    click_on "Edit", match: :first

    fill_in "Allowsubmissionsfromdate", with: @assign_override.allowsubmissionsfromdate
    fill_in "Assignid", with: @assign_override.assignid
    fill_in "Cutoffdate", with: @assign_override.cutoffdate
    fill_in "Duedate", with: @assign_override.duedate
    fill_in "Groupid", with: @assign_override.groupid
    fill_in "Sortorder", with: @assign_override.sortorder
    fill_in "Userid", with: @assign_override.userid
    click_on "Update Assign override"

    assert_text "Assign override was successfully updated"
    click_on "Back"
  end

  test "destroying a Assign override" do
    visit assign_overrides_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assign override was successfully destroyed"
  end
end
