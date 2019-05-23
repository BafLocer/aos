require "application_system_test_case"

class ConfigPluginsTest < ApplicationSystemTestCase
  setup do
    @config_plugin = config_plugins(:one)
  end

  test "visiting the index" do
    visit config_plugins_url
    assert_selector "h1", text: "Config Plugins"
  end

  test "creating a Config plugin" do
    visit config_plugins_url
    click_on "New Config Plugin"

    fill_in "Name", with: @config_plugin.name
    fill_in "Plugin", with: @config_plugin.plugin
    fill_in "Value", with: @config_plugin.value
    click_on "Create Config plugin"

    assert_text "Config plugin was successfully created"
    click_on "Back"
  end

  test "updating a Config plugin" do
    visit config_plugins_url
    click_on "Edit", match: :first

    fill_in "Name", with: @config_plugin.name
    fill_in "Plugin", with: @config_plugin.plugin
    fill_in "Value", with: @config_plugin.value
    click_on "Update Config plugin"

    assert_text "Config plugin was successfully updated"
    click_on "Back"
  end

  test "destroying a Config plugin" do
    visit config_plugins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Config plugin was successfully destroyed"
  end
end
