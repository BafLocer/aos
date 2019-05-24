require 'test_helper'

class AnalyticsIndicatorCalcsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_indicator_calc = analytics_indicator_calcs(:one)
  end

  test "should get index" do
    get analytics_indicator_calcs_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_indicator_calc_url
    assert_response :success
  end

  test "should create analytics_indicator_calc" do
    assert_difference('AnalyticsIndicatorCalc.count') do
      post analytics_indicator_calcs_url, params: { analytics_indicator_calc: { contextid: @analytics_indicator_calc.contextid, endtime: @analytics_indicator_calc.endtime, indicator: @analytics_indicator_calc.indicator, sampleid: @analytics_indicator_calc.sampleid, sampleorign: @analytics_indicator_calc.sampleorign, starttime: @analytics_indicator_calc.starttime, timecreated: @analytics_indicator_calc.timecreated, value: @analytics_indicator_calc.value } }
    end

    assert_redirected_to analytics_indicator_calc_url(AnalyticsIndicatorCalc.last)
  end

  test "should show analytics_indicator_calc" do
    get analytics_indicator_calc_url(@analytics_indicator_calc)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_indicator_calc_url(@analytics_indicator_calc)
    assert_response :success
  end

  test "should update analytics_indicator_calc" do
    patch analytics_indicator_calc_url(@analytics_indicator_calc), params: { analytics_indicator_calc: { contextid: @analytics_indicator_calc.contextid, endtime: @analytics_indicator_calc.endtime, indicator: @analytics_indicator_calc.indicator, sampleid: @analytics_indicator_calc.sampleid, sampleorign: @analytics_indicator_calc.sampleorign, starttime: @analytics_indicator_calc.starttime, timecreated: @analytics_indicator_calc.timecreated, value: @analytics_indicator_calc.value } }
    assert_redirected_to analytics_indicator_calc_url(@analytics_indicator_calc)
  end

  test "should destroy analytics_indicator_calc" do
    assert_difference('AnalyticsIndicatorCalc.count', -1) do
      delete analytics_indicator_calc_url(@analytics_indicator_calc)
    end

    assert_redirected_to analytics_indicator_calcs_url
  end
end
