require 'test_helper'

class AnalyticsTrainSamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_train_sample = analytics_train_samples(:one)
  end

  test "should get index" do
    get analytics_train_samples_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_train_sample_url
    assert_response :success
  end

  test "should create analytics_train_sample" do
    assert_difference('AnalyticsTrainSample.count') do
      post analytics_train_samples_url, params: { analytics_train_sample: { analysableid: @analytics_train_sample.analysableid, fileid: @analytics_train_sample.fileid, modelid: @analytics_train_sample.modelid, sampleids: @analytics_train_sample.sampleids, timecreated: @analytics_train_sample.timecreated, timespliting: @analytics_train_sample.timespliting } }
    end

    assert_redirected_to analytics_train_sample_url(AnalyticsTrainSample.last)
  end

  test "should show analytics_train_sample" do
    get analytics_train_sample_url(@analytics_train_sample)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_train_sample_url(@analytics_train_sample)
    assert_response :success
  end

  test "should update analytics_train_sample" do
    patch analytics_train_sample_url(@analytics_train_sample), params: { analytics_train_sample: { analysableid: @analytics_train_sample.analysableid, fileid: @analytics_train_sample.fileid, modelid: @analytics_train_sample.modelid, sampleids: @analytics_train_sample.sampleids, timecreated: @analytics_train_sample.timecreated, timespliting: @analytics_train_sample.timespliting } }
    assert_redirected_to analytics_train_sample_url(@analytics_train_sample)
  end

  test "should destroy analytics_train_sample" do
    assert_difference('AnalyticsTrainSample.count', -1) do
      delete analytics_train_sample_url(@analytics_train_sample)
    end

    assert_redirected_to analytics_train_samples_url
  end
end
