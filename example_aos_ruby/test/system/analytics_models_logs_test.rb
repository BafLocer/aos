require "application_system_test_case"

class AnalyticsModelsLogsTest < ApplicationSystemTestCase
  setup do
    @analytics_models_log = analytics_models_logs(:one)
  end

  test "visiting the index" do
    visit analytics_models_logs_url
    assert_selector "h1", text: "Analytics Models Logs"
  end

  test "creating a Analytics models log" do
    visit analytics_models_logs_url
    click_on "New Analytics Models Log"

    fill_in "Dir", with: @analytics_models_log.dir
    fill_in "Indicators", with: @analytics_models_log.indicators
    fill_in "Info", with: @analytics_models_log.info
    fill_in "Modelid", with: @analytics_models_log.modelid
    fill_in "Score", with: @analytics_models_log.score
    fill_in "Target", with: @analytics_models_log.target
    fill_in "Timecreated", with: @analytics_models_log.timecreated
    fill_in "Timespliting", with: @analytics_models_log.timespliting
    fill_in "Usermodified", with: @analytics_models_log.usermodified
    fill_in "Version", with: @analytics_models_log.version
    click_on "Create Analytics models log"

    assert_text "Analytics models log was successfully created"
    click_on "Back"
  end

  test "updating a Analytics models log" do
    visit analytics_models_logs_url
    click_on "Edit", match: :first

    fill_in "Dir", with: @analytics_models_log.dir
    fill_in "Indicators", with: @analytics_models_log.indicators
    fill_in "Info", with: @analytics_models_log.info
    fill_in "Modelid", with: @analytics_models_log.modelid
    fill_in "Score", with: @analytics_models_log.score
    fill_in "Target", with: @analytics_models_log.target
    fill_in "Timecreated", with: @analytics_models_log.timecreated
    fill_in "Timespliting", with: @analytics_models_log.timespliting
    fill_in "Usermodified", with: @analytics_models_log.usermodified
    fill_in "Version", with: @analytics_models_log.version
    click_on "Update Analytics models log"

    assert_text "Analytics models log was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics models log" do
    visit analytics_models_logs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics models log was successfully destroyed"
  end
end
