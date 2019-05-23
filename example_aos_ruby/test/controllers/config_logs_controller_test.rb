require 'test_helper'

class ConfigLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @config_log = config_logs(:one)
  end

  test "should get index" do
    get config_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_config_log_url
    assert_response :success
  end

  test "should create config_log" do
    assert_difference('ConfigLog.count') do
      post config_logs_url, params: { config_log: { name: @config_log.name, oldvalue: @config_log.oldvalue, plugin: @config_log.plugin, timemodified: @config_log.timemodified, userid: @config_log.userid, value: @config_log.value } }
    end

    assert_redirected_to config_log_url(ConfigLog.last)
  end

  test "should show config_log" do
    get config_log_url(@config_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_config_log_url(@config_log)
    assert_response :success
  end

  test "should update config_log" do
    patch config_log_url(@config_log), params: { config_log: { name: @config_log.name, oldvalue: @config_log.oldvalue, plugin: @config_log.plugin, timemodified: @config_log.timemodified, userid: @config_log.userid, value: @config_log.value } }
    assert_redirected_to config_log_url(@config_log)
  end

  test "should destroy config_log" do
    assert_difference('ConfigLog.count', -1) do
      delete config_log_url(@config_log)
    end

    assert_redirected_to config_logs_url
  end
end
