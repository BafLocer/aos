require "application_system_test_case"

class AnalyticsTrainSamplesTest < ApplicationSystemTestCase
  setup do
    @analytics_train_sample = analytics_train_samples(:one)
  end

  test "visiting the index" do
    visit analytics_train_samples_url
    assert_selector "h1", text: "Analytics Train Samples"
  end

  test "creating a Analytics train sample" do
    visit analytics_train_samples_url
    click_on "New Analytics Train Sample"

    fill_in "Analysableid", with: @analytics_train_sample.analysableid
    fill_in "Fileid", with: @analytics_train_sample.fileid
    fill_in "Modelid", with: @analytics_train_sample.modelid
    fill_in "Sampleids", with: @analytics_train_sample.sampleids
    fill_in "Timecreated", with: @analytics_train_sample.timecreated
    fill_in "Timespliting", with: @analytics_train_sample.timespliting
    click_on "Create Analytics train sample"

    assert_text "Analytics train sample was successfully created"
    click_on "Back"
  end

  test "updating a Analytics train sample" do
    visit analytics_train_samples_url
    click_on "Edit", match: :first

    fill_in "Analysableid", with: @analytics_train_sample.analysableid
    fill_in "Fileid", with: @analytics_train_sample.fileid
    fill_in "Modelid", with: @analytics_train_sample.modelid
    fill_in "Sampleids", with: @analytics_train_sample.sampleids
    fill_in "Timecreated", with: @analytics_train_sample.timecreated
    fill_in "Timespliting", with: @analytics_train_sample.timespliting
    click_on "Update Analytics train sample"

    assert_text "Analytics train sample was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics train sample" do
    visit analytics_train_samples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics train sample was successfully destroyed"
  end
end
