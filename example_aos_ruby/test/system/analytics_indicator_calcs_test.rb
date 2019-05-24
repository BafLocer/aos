require "application_system_test_case"

class AnalyticsIndicatorCalcsTest < ApplicationSystemTestCase
  setup do
    @analytics_indicator_calc = analytics_indicator_calcs(:one)
  end

  test "visiting the index" do
    visit analytics_indicator_calcs_url
    assert_selector "h1", text: "Analytics Indicator Calcs"
  end

  test "creating a Analytics indicator calc" do
    visit analytics_indicator_calcs_url
    click_on "New Analytics Indicator Calc"

    fill_in "Contextid", with: @analytics_indicator_calc.contextid
    fill_in "Endtime", with: @analytics_indicator_calc.endtime
    fill_in "Indicator", with: @analytics_indicator_calc.indicator
    fill_in "Sampleid", with: @analytics_indicator_calc.sampleid
    fill_in "Sampleorign", with: @analytics_indicator_calc.sampleorign
    fill_in "Starttime", with: @analytics_indicator_calc.starttime
    fill_in "Timecreated", with: @analytics_indicator_calc.timecreated
    fill_in "Value", with: @analytics_indicator_calc.value
    click_on "Create Analytics indicator calc"

    assert_text "Analytics indicator calc was successfully created"
    click_on "Back"
  end

  test "updating a Analytics indicator calc" do
    visit analytics_indicator_calcs_url
    click_on "Edit", match: :first

    fill_in "Contextid", with: @analytics_indicator_calc.contextid
    fill_in "Endtime", with: @analytics_indicator_calc.endtime
    fill_in "Indicator", with: @analytics_indicator_calc.indicator
    fill_in "Sampleid", with: @analytics_indicator_calc.sampleid
    fill_in "Sampleorign", with: @analytics_indicator_calc.sampleorign
    fill_in "Starttime", with: @analytics_indicator_calc.starttime
    fill_in "Timecreated", with: @analytics_indicator_calc.timecreated
    fill_in "Value", with: @analytics_indicator_calc.value
    click_on "Update Analytics indicator calc"

    assert_text "Analytics indicator calc was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics indicator calc" do
    visit analytics_indicator_calcs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics indicator calc was successfully destroyed"
  end
end
