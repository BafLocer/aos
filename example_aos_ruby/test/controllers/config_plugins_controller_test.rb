require 'test_helper'

class ConfigPluginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @config_plugin = config_plugins(:one)
  end

  test "should get index" do
    get config_plugins_url
    assert_response :success
  end

  test "should get new" do
    get new_config_plugin_url
    assert_response :success
  end

  test "should create config_plugin" do
    assert_difference('ConfigPlugin.count') do
      post config_plugins_url, params: { config_plugin: { name: @config_plugin.name, plugin: @config_plugin.plugin, value: @config_plugin.value } }
    end

    assert_redirected_to config_plugin_url(ConfigPlugin.last)
  end

  test "should show config_plugin" do
    get config_plugin_url(@config_plugin)
    assert_response :success
  end

  test "should get edit" do
    get edit_config_plugin_url(@config_plugin)
    assert_response :success
  end

  test "should update config_plugin" do
    patch config_plugin_url(@config_plugin), params: { config_plugin: { name: @config_plugin.name, plugin: @config_plugin.plugin, value: @config_plugin.value } }
    assert_redirected_to config_plugin_url(@config_plugin)
  end

  test "should destroy config_plugin" do
    assert_difference('ConfigPlugin.count', -1) do
      delete config_plugin_url(@config_plugin)
    end

    assert_redirected_to config_plugins_url
  end
end
