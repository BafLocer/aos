require "application_system_test_case"

class AnalyticsPredictSamplesTest < ApplicationSystemTestCase
  setup do
    @analytics_predict_sample = analytics_predict_samples(:one)
  end

  test "visiting the index" do
    visit analytics_predict_samples_url
    assert_selector "h1", text: "Analytics Predict Samples"
  end

  test "creating a Analytics predict sample" do
    visit analytics_predict_samples_url
    click_on "New Analytics Predict Sample"

    fill_in "Analysableid", with: @analytics_predict_sample.analysableid
    fill_in "Modelid", with: @analytics_predict_sample.modelid
    fill_in "Rangeindex", with: @analytics_predict_sample.rangeindex
    fill_in "Sampleids", with: @analytics_predict_sample.sampleids
    fill_in "Timecreated", with: @analytics_predict_sample.timecreated
    fill_in "Timemodified", with: @analytics_predict_sample.timemodified
    fill_in "Timespliting", with: @analytics_predict_sample.timespliting
    click_on "Create Analytics predict sample"

    assert_text "Analytics predict sample was successfully created"
    click_on "Back"
  end

  test "updating a Analytics predict sample" do
    visit analytics_predict_samples_url
    click_on "Edit", match: :first

    fill_in "Analysableid", with: @analytics_predict_sample.analysableid
    fill_in "Modelid", with: @analytics_predict_sample.modelid
    fill_in "Rangeindex", with: @analytics_predict_sample.rangeindex
    fill_in "Sampleids", with: @analytics_predict_sample.sampleids
    fill_in "Timecreated", with: @analytics_predict_sample.timecreated
    fill_in "Timemodified", with: @analytics_predict_sample.timemodified
    fill_in "Timespliting", with: @analytics_predict_sample.timespliting
    click_on "Update Analytics predict sample"

    assert_text "Analytics predict sample was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics predict sample" do
    visit analytics_predict_samples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics predict sample was successfully destroyed"
  end
end
