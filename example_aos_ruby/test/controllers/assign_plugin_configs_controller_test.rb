require 'test_helper'

class AssignPluginConfigsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assign_plugin_config = assign_plugin_configs(:one)
  end

  test "should get index" do
    get assign_plugin_configs_url
    assert_response :success
  end

  test "should get new" do
    get new_assign_plugin_config_url
    assert_response :success
  end

  test "should create assign_plugin_config" do
    assert_difference('AssignPluginConfig.count') do
      post assign_plugin_configs_url, params: { assign_plugin_config: { assignment: @assign_plugin_config.assignment, name: @assign_plugin_config.name, plugin: @assign_plugin_config.plugin, subtype: @assign_plugin_config.subtype, value: @assign_plugin_config.value } }
    end

    assert_redirected_to assign_plugin_config_url(AssignPluginConfig.last)
  end

  test "should show assign_plugin_config" do
    get assign_plugin_config_url(@assign_plugin_config)
    assert_response :success
  end

  test "should get edit" do
    get edit_assign_plugin_config_url(@assign_plugin_config)
    assert_response :success
  end

  test "should update assign_plugin_config" do
    patch assign_plugin_config_url(@assign_plugin_config), params: { assign_plugin_config: { assignment: @assign_plugin_config.assignment, name: @assign_plugin_config.name, plugin: @assign_plugin_config.plugin, subtype: @assign_plugin_config.subtype, value: @assign_plugin_config.value } }
    assert_redirected_to assign_plugin_config_url(@assign_plugin_config)
  end

  test "should destroy assign_plugin_config" do
    assert_difference('AssignPluginConfig.count', -1) do
      delete assign_plugin_config_url(@assign_plugin_config)
    end

    assert_redirected_to assign_plugin_configs_url
  end
end
