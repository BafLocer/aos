require 'test_helper'

class AnalyticsUsedFilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @analytics_used_file = analytics_used_files(:one)
  end

  test "should get index" do
    get analytics_used_files_url
    assert_response :success
  end

  test "should get new" do
    get new_analytics_used_file_url
    assert_response :success
  end

  test "should create analytics_used_file" do
    assert_difference('AnalyticsUsedFile.count') do
      post analytics_used_files_url, params: { analytics_used_file: { action: @analytics_used_file.action, fileid: @analytics_used_file.fileid, modelid: @analytics_used_file.modelid, time: @analytics_used_file.time } }
    end

    assert_redirected_to analytics_used_file_url(AnalyticsUsedFile.last)
  end

  test "should show analytics_used_file" do
    get analytics_used_file_url(@analytics_used_file)
    assert_response :success
  end

  test "should get edit" do
    get edit_analytics_used_file_url(@analytics_used_file)
    assert_response :success
  end

  test "should update analytics_used_file" do
    patch analytics_used_file_url(@analytics_used_file), params: { analytics_used_file: { action: @analytics_used_file.action, fileid: @analytics_used_file.fileid, modelid: @analytics_used_file.modelid, time: @analytics_used_file.time } }
    assert_redirected_to analytics_used_file_url(@analytics_used_file)
  end

  test "should destroy analytics_used_file" do
    assert_difference('AnalyticsUsedFile.count', -1) do
      delete analytics_used_file_url(@analytics_used_file)
    end

    assert_redirected_to analytics_used_files_url
  end
end
