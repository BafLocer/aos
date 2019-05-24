require 'test_helper'

class AnalyticsUsedAnalysablesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_used_analysable = analytics_used_analysables(:one)
  end

  test "should get index" do
    get analytics_used_analysables_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_used_analysable_url
    assert_response :success
  end

  test "should create analytics_used_analysable" do
    assert_difference('AnalyticsUsedAnalysable.count') do
      post analytics_used_analysables_url, params: { analytics_used_analysable: { action: @analytics_used_analysable.action, analysableid: @analytics_used_analysable.analysableid, modelid: @analytics_used_analysable.modelid, timeanalysed: @analytics_used_analysable.timeanalysed } }
    end

    assert_redirected_to analytics_used_analysable_url(AnalyticsUsedAnalysable.last)
  end

  test "should show analytics_used_analysable" do
    get analytics_used_analysable_url(@analytics_used_analysable)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_used_analysable_url(@analytics_used_analysable)
    assert_response :success
  end

  test "should update analytics_used_analysable" do
    patch analytics_used_analysable_url(@analytics_used_analysable), params: { analytics_used_analysable: { action: @analytics_used_analysable.action, analysableid: @analytics_used_analysable.analysableid, modelid: @analytics_used_analysable.modelid, timeanalysed: @analytics_used_analysable.timeanalysed } }
    assert_redirected_to analytics_used_analysable_url(@analytics_used_analysable)
  end

  test "should destroy analytics_used_analysable" do
    assert_difference('AnalyticsUsedAnalysable.count', -1) do
      delete analytics_used_analysable_url(@analytics_used_analysable)
    end

    assert_redirected_to analytics_used_analysables_url
  end
end
