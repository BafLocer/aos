require "application_system_test_case"

class ConfigLogsTest < ApplicationSystemTestCase
  setup do
    @config_log = config_logs(:one)
  end

  test "visiting the index" do
    visit config_logs_url
    assert_selector "h1", text: "Config Logs"
  end

  test "creating a Config log" do
    visit config_logs_url
    click_on "New Config Log"

    fill_in "Name", with: @config_log.name
    fill_in "Oldvalue", with: @config_log.oldvalue
    fill_in "Plugin", with: @config_log.plugin
    fill_in "Timemodified", with: @config_log.timemodified
    fill_in "Userid", with: @config_log.userid
    fill_in "Value", with: @config_log.value
    click_on "Create Config log"

    assert_text "Config log was successfully created"
    click_on "Back"
  end

  test "updating a Config log" do
    visit config_logs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @config_log.name
    fill_in "Oldvalue", with: @config_log.oldvalue
    fill_in "Plugin", with: @config_log.plugin
    fill_in "Timemodified", with: @config_log.timemodified
    fill_in "Userid", with: @config_log.userid
    fill_in "Value", with: @config_log.value
    click_on "Update Config log"

    assert_text "Config log was successfully updated"
    click_on "Back"
  end

  test "destroying a Config log" do
    visit config_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Config log was successfully destroyed"
  end
end
