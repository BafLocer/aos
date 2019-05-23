require "application_system_test_case"

class CacheFlagsTest < ApplicationSystemTestCase
  setup do
    @cache_flag = cache_flags(:one)
  end

  test "visiting the index" do
    visit cache_flags_url
    assert_selector "h1", text: "Cache Flags"
  end

  test "creating a Cache flag" do
    visit cache_flags_url
    click_on "New Cache Flag"

    fill_in "Expiry", with: @cache_flag.expiry
    fill_in "Flagtype", with: @cache_flag.flagtype
    fill_in "Name", with: @cache_flag.name
    fill_in "Timemodified", with: @cache_flag.timemodified
    fill_in "Value", with: @cache_flag.value
    click_on "Create Cache flag"

    assert_text "Cache flag was successfully created"
    click_on "Back"
  end

  test "updating a Cache flag" do
    visit cache_flags_url
    click_on "Edit", match: :first

    fill_in "Expiry", with: @cache_flag.expiry
    fill_in "Flagtype", with: @cache_flag.flagtype
    fill_in "Name", with: @cache_flag.name
    fill_in "Timemodified", with: @cache_flag.timemodified
    fill_in "Value", with: @cache_flag.value
    click_on "Update Cache flag"

    assert_text "Cache flag was successfully updated"
    click_on "Back"
  end

  test "destroying a Cache flag" do
    visit cache_flags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cache flag was successfully destroyed"
  end
end
