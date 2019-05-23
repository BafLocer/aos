require "application_system_test_case"

class CacheFiltersTest < ApplicationSystemTestCase
  setup do
    @cache_filter = cache_filters(:one)
  end

  test "visiting the index" do
    visit cache_filters_url
    assert_selector "h1", text: "Cache Filters"
  end

  test "creating a Cache filter" do
    visit cache_filters_url
    click_on "New Cache Filter"

    fill_in "Filter", with: @cache_filter.filter
    fill_in "Md5key", with: @cache_filter.md5key
    fill_in "Rawtext", with: @cache_filter.rawtext
    fill_in "Timemodified", with: @cache_filter.timemodified
    fill_in "Version", with: @cache_filter.version
    click_on "Create Cache filter"

    assert_text "Cache filter was successfully created"
    click_on "Back"
  end

  test "updating a Cache filter" do
    visit cache_filters_url
    click_on "Edit", match: :first

    fill_in "Filter", with: @cache_filter.filter
    fill_in "Md5key", with: @cache_filter.md5key
    fill_in "Rawtext", with: @cache_filter.rawtext
    fill_in "Timemodified", with: @cache_filter.timemodified
    fill_in "Version", with: @cache_filter.version
    click_on "Update Cache filter"

    assert_text "Cache filter was successfully updated"
    click_on "Back"
  end

  test "destroying a Cache filter" do
    visit cache_filters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cache filter was successfully destroyed"
  end
end
