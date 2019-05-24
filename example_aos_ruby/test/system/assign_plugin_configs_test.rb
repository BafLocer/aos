require "application_system_test_case"

class AssignPluginConfigsTest < ApplicationSystemTestCase
  setup do
    @assign_plugin_config = assign_plugin_configs(:one)
  end

  test "visiting the index" do
    visit assign_plugin_configs_url
    assert_selector "h1", text: "Assign Plugin Configs"
  end

  test "creating a Assign plugin config" do
    visit assign_plugin_configs_url
    click_on "New Assign Plugin Config"

    fill_in "Assignment", with: @assign_plugin_config.assignment
    fill_in "Name", with: @assign_plugin_config.name
    fill_in "Plugin", with: @assign_plugin_config.plugin
    fill_in "Subtype", with: @assign_plugin_config.subtype
    fill_in "Value", with: @assign_plugin_config.value
    click_on "Create Assign plugin config"

    assert_text "Assign plugin config was successfully created"
    click_on "Back"
  end

  test "updating a Assign plugin config" do
    visit assign_plugin_configs_url
    click_on "Edit", match: :first

    fill_in "Assignment", with: @assign_plugin_config.assignment
    fill_in "Name", with: @assign_plugin_config.name
    fill_in "Plugin", with: @assign_plugin_config.plugin
    fill_in "Subtype", with: @assign_plugin_config.subtype
    fill_in "Value", with: @assign_plugin_config.value
    click_on "Update Assign plugin config"

    assert_text "Assign plugin config was successfully updated"
    click_on "Back"
  end

  test "destroying a Assign plugin config" do
    visit assign_plugin_configs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Assign plugin config was successfully destroyed"
  end
end
