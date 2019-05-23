require 'test_helper'

class CacheFiltersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cache_filter = cache_filters(:one)
  end

  test "should get index" do
    get cache_filters_url
    assert_response :success
  end

  test "should get new" do
    get new_cache_filter_url
    assert_response :success
  end

  test "should create cache_filter" do
    assert_difference('CacheFilter.count') do
      post cache_filters_url, params: { cache_filter: { filter: @cache_filter.filter, md5key: @cache_filter.md5key, rawtext: @cache_filter.rawtext, timemodified: @cache_filter.timemodified, version: @cache_filter.version } }
    end

    assert_redirected_to cache_filter_url(CacheFilter.last)
  end

  test "should show cache_filter" do
    get cache_filter_url(@cache_filter)
    assert_response :success
  end

  test "should get edit" do
    get edit_cache_filter_url(@cache_filter)
    assert_response :success
  end

  test "should update cache_filter" do
    patch cache_filter_url(@cache_filter), params: { cache_filter: { filter: @cache_filter.filter, md5key: @cache_filter.md5key, rawtext: @cache_filter.rawtext, timemodified: @cache_filter.timemodified, version: @cache_filter.version } }
    assert_redirected_to cache_filter_url(@cache_filter)
  end

  test "should destroy cache_filter" do
    assert_difference('CacheFilter.count', -1) do
      delete cache_filter_url(@cache_filter)
    end

    assert_redirected_to cache_filters_url
  end
end
