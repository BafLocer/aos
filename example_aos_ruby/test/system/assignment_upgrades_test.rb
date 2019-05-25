require "application_system_test_case"

class AssignmentUpgradesTest < ApplicationSystemTestCase
  setup do
    @assignment_upgrade = assignment_upgrades(:one)
  end

  test "visiting the index" do
    visit assignment_upgrades_url
    assert_selector "h1", text: "Assignment Upgrades"
  end

  test "creating a Assignment upgrade" do
    visit assignment_upgrades_url
    click_on "New Assignment Upgrade"

    fill_in "Newcmid", with: @assignment_upgrade.newcmid
    fill_in "Newinstance", with: @assignment_upgrade.newinstance
    fill_in "Oldcmid", with: @assignment_upgrade.oldcmid
    fill_in "Oldinstance", with: @assignment_upgrade.oldinstance
    fill_in "Timecreated", with: @assignment_upgrade.timecreated
    click_on "Create Assignment upgrade"

    assert_text "Assignment upgrade was successfully created"
    click_on "Back"
  end

  test "updating a Assignment upgrade" do
    visit assignment_upgrades_url
    click_on "Edit", match: :first

    fill_in "Newcmid", with: @assignment_upgrade.newcmid
    fill_in "Newinstance", with: @assignment_upgrade.newinstance
    fill_in "Oldcmid", with: @assignment_upgrade.oldcmid
    fill_in "Oldinstance", with: @assignment_upgrade.oldinstance
    fill_in "Timecreated", with: @assignment_upgrade.timecreated
    click_on "Update Assignment upgrade"

    assert_text "Assignment upgrade was successfully updated"
    click_on "Back"
  end

  test "destroying a Assignment upgrade" do
    visit assignment_upgrades_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assignment upgrade was successfully destroyed"
  end
end
