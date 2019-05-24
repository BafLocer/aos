require 'test_helper'

class AnalyticsPredictSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_predict_sample = analytics_predict_samples(:one)
  end

  test "should get index" do
    get analytics_predict_samples_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_predict_sample_url
    assert_response :success
  end

  test "should create analytics_predict_sample" do
    assert_difference('AnalyticsPredictSample.count') do
      post analytics_predict_samples_url, params: { analytics_predict_sample: { analysableid: @analytics_predict_sample.analysableid, modelid: @analytics_predict_sample.modelid, rangeindex: @analytics_predict_sample.rangeindex, sampleids: @analytics_predict_sample.sampleids, timecreated: @analytics_predict_sample.timecreated, timemodified: @analytics_predict_sample.timemodified, timespliting: @analytics_predict_sample.timespliting } }
    end

    assert_redirected_to analytics_predict_sample_url(AnalyticsPredictSample.last)
  end

  test "should show analytics_predict_sample" do
    get analytics_predict_sample_url(@analytics_predict_sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_predict_sample_url(@analytics_predict_sample)
    assert_response :success
  end

  test "should update analytics_predict_sample" do
    patch analytics_predict_sample_url(@analytics_predict_sample), params: { analytics_predict_sample: { analysableid: @analytics_predict_sample.analysableid, modelid: @analytics_predict_sample.modelid, rangeindex: @analytics_predict_sample.rangeindex, sampleids: @analytics_predict_sample.sampleids, timecreated: @analytics_predict_sample.timecreated, timemodified: @analytics_predict_sample.timemodified, timespliting: @analytics_predict_sample.timespliting } }
    assert_redirected_to analytics_predict_sample_url(@analytics_predict_sample)
  end

  test "should destroy analytics_predict_sample" do
    assert_difference('AnalyticsPredictSample.count', -1) do
      delete analytics_predict_sample_url(@analytics_predict_sample)
    end

    assert_redirected_to analytics_predict_samples_url
  end
end
