require "application_system_test_case"

class AssignUserMappingsTest < ApplicationSystemTestCase
  setup do
    @assign_user_mapping = assign_user_mappings(:one)
  end

  test "visiting the index" do
    visit assign_user_mappings_url
    assert_selector "h1", text: "Assign User Mappings"
  end

  test "creating a Assign user mapping" do
    visit assign_user_mappings_url
    click_on "New Assign User Mapping"

    fill_in "Assignment", with: @assign_user_mapping.assignment
    fill_in "Userid", with: @assign_user_mapping.userid
    click_on "Create Assign user mapping"

    assert_text "Assign user mapping was successfully created"
    click_on "Back"
  end

  test "updating a Assign user mapping" do
    visit assign_user_mappings_url
    click_on "Edit", match: :first

    fill_in "Assignment", with: @assign_user_mapping.assignment
    fill_in "Userid", with: @assign_user_mapping.userid
    click_on "Update Assign user mapping"

    assert_text "Assign user mapping was successfully updated"
    click_on "Back"
  end

  test "destroying a Assign user mapping" do
    visit assign_user_mappings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assign user mapping was successfully destroyed"
  end
end
