require "application_system_test_case"

class AnalyticsUsedFilesTest < ApplicationSystemTestCase
  setup do
    @analytics_used_file = analytics_used_files(:one)
  end

  test "visiting the index" do
    visit analytics_used_files_url
    assert_selector "h1", text: "Analytics Used Files"
  end

  test "creating a Analytics used file" do
    visit analytics_used_files_url
    click_on "New Analytics Used File"

    fill_in "Action", with: @analytics_used_file.action
    fill_in "Fileid", with: @analytics_used_file.fileid
    fill_in "Modelid", with: @analytics_used_file.modelid
    fill_in "Time", with: @analytics_used_file.time
    click_on "Create Analytics used file"

    assert_text "Analytics used file was successfully created"
    click_on "Back"
  end

  test "updating a Analytics used file" do
    visit analytics_used_files_url
    click_on "Edit", match: :first

    fill_in "Action", with: @analytics_used_file.action
    fill_in "Fileid", with: @analytics_used_file.fileid
    fill_in "Modelid", with: @analytics_used_file.modelid
    fill_in "Time", with: @analytics_used_file.time
    click_on "Update Analytics used file"

    assert_text "Analytics used file was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics used file" do
    visit analytics_used_files_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics used file was successfully destroyed"
  end
end
