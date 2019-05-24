require 'test_helper'

class AnalyticsModelsLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_models_log = analytics_models_logs(:one)
  end

  test "should get index" do
    get analytics_models_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_models_log_url
    assert_response :success
  end

  test "should create analytics_models_log" do
    assert_difference('AnalyticsModelsLog.count') do
      post analytics_models_logs_url, params: { analytics_models_log: { dir: @analytics_models_log.dir, indicators: @analytics_models_log.indicators, info: @analytics_models_log.info, modelid: @analytics_models_log.modelid, score: @analytics_models_log.score, target: @analytics_models_log.target, timecreated: @analytics_models_log.timecreated, timespliting: @analytics_models_log.timespliting, usermodified: @analytics_models_log.usermodified, version: @analytics_models_log.version } }
    end

    assert_redirected_to analytics_models_log_url(AnalyticsModelsLog.last)
  end

  test "should show analytics_models_log" do
    get analytics_models_log_url(@analytics_models_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_models_log_url(@analytics_models_log)
    assert_response :success
  end

  test "should update analytics_models_log" do
    patch analytics_models_log_url(@analytics_models_log), params: { analytics_models_log: { dir: @analytics_models_log.dir, indicators: @analytics_models_log.indicators, info: @analytics_models_log.info, modelid: @analytics_models_log.modelid, score: @analytics_models_log.score, target: @analytics_models_log.target, timecreated: @analytics_models_log.timecreated, timespliting: @analytics_models_log.timespliting, usermodified: @analytics_models_log.usermodified, version: @analytics_models_log.version } }
    assert_redirected_to analytics_models_log_url(@analytics_models_log)
  end

  test "should destroy analytics_models_log" do
    assert_difference('AnalyticsModelsLog.count', -1) do
      delete analytics_models_log_url(@analytics_models_log)
    end

    assert_redirected_to analytics_models_logs_url
  end
end
