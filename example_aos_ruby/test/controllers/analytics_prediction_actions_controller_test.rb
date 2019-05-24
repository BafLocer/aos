require 'test_helper'

class AnalyticsPredictionActionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_prediction_action = analytics_prediction_actions(:one)
  end

  test "should get index" do
    get analytics_prediction_actions_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_prediction_action_url
    assert_response :success
  end

  test "should create analytics_prediction_action" do
    assert_difference('AnalyticsPredictionAction.count') do
      post analytics_prediction_actions_url, params: { analytics_prediction_action: { actionname: @analytics_prediction_action.actionname, predictionid: @analytics_prediction_action.predictionid, timecreated: @analytics_prediction_action.timecreated, userid: @analytics_prediction_action.userid } }
    end

    assert_redirected_to analytics_prediction_action_url(AnalyticsPredictionAction.last)
  end

  test "should show analytics_prediction_action" do
    get analytics_prediction_action_url(@analytics_prediction_action)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_prediction_action_url(@analytics_prediction_action)
    assert_response :success
  end

  test "should update analytics_prediction_action" do
    patch analytics_prediction_action_url(@analytics_prediction_action), params: { analytics_prediction_action: { actionname: @analytics_prediction_action.actionname, predictionid: @analytics_prediction_action.predictionid, timecreated: @analytics_prediction_action.timecreated, userid: @analytics_prediction_action.userid } }
    assert_redirected_to analytics_prediction_action_url(@analytics_prediction_action)
  end

  test "should destroy analytics_prediction_action" do
    assert_difference('AnalyticsPredictionAction.count', -1) do
      delete analytics_prediction_action_url(@analytics_prediction_action)
    end

    assert_redirected_to analytics_prediction_actions_url
  end
end
