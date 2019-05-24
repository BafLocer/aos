require "application_system_test_case"

class AnalyticsPredictionActionsTest < ApplicationSystemTestCase
  setup do
    @analytics_prediction_action = analytics_prediction_actions(:one)
  end

  test "visiting the index" do
    visit analytics_prediction_actions_url
    assert_selector "h1", text: "Analytics Prediction Actions"
  end

  test "creating a Analytics prediction action" do
    visit analytics_prediction_actions_url
    click_on "New Analytics Prediction Action"

    fill_in "Actionname", with: @analytics_prediction_action.actionname
    fill_in "Predictionid", with: @analytics_prediction_action.predictionid
    fill_in "Timecreated", with: @analytics_prediction_action.timecreated
    fill_in "Userid", with: @analytics_prediction_action.userid
    click_on "Create Analytics prediction action"

    assert_text "Analytics prediction action was successfully created"
    click_on "Back"
  end

  test "updating a Analytics prediction action" do
    visit analytics_prediction_actions_url
    click_on "Edit", match: :first

    fill_in "Actionname", with: @analytics_prediction_action.actionname
    fill_in "Predictionid", with: @analytics_prediction_action.predictionid
    fill_in "Timecreated", with: @analytics_prediction_action.timecreated
    fill_in "Userid", with: @analytics_prediction_action.userid
    click_on "Update Analytics prediction action"

    assert_text "Analytics prediction action was successfully updated"
    click_on "Back"
  end

  test "destroying a Analytics prediction action" do
    visit analytics_prediction_actions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Analytics prediction action was successfully destroyed"
  end
end
