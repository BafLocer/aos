require "application_system_test_case"

class AnalyticsUsedAnalysablesTest < ApplicationSystemTestCase
  setup do
    @analytics_used_analysable = analytics_used_analysables(:one)
  end

  test "visiting the index" do
    visit analytics_used_analysables_url
    assert_selector "h1", text: "Analytics Used Analysables"
  end

  test "creating a Analytics used analysable" do
    visit analytics_used_analysables_url
    click_on "New Analytics Used Analysable"

    fill_in "Action", with: @analytics_used_analysable.action
    fill_in "Analysableid", with: @analytics_used_analysable.analysableid
    fill_in "Modelid", with: @analytics_used_analysable.modelid
    fill_in "Timeanalysed", with: @analytics_used_analysable.timeanalysed
    click_on "Create Analytics used analysable"

    assert_text "Analytics used analysable was successfully created"
    click_on "Back"
  end

  test "updating a Analytics used analysable" do
    visit analytics_used_analysables_url
    click_on "Edit", match: :first

    fill_in "Action", with: @analytics_used_analysable.action
    fill_in "Analysableid", with: @analytics_used_analysable.analysableid
    fill_in "Modelid", with: @analytics_used_analysable.modelid
    fill_in "Timeanalysed", with: @analytics_used_analysable.timeanalysed
    click_on "Update Analytics used analysable"

    assert_text "Analytics used analysable was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics used analysable" do
    visit analytics_used_analysables_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics used analysable was successfully destroyed"
  end
end
