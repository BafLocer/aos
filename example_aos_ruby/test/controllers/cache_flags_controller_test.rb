require 'test_helper'

class CacheFlagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cache_flag = cache_flags(:one)
  end

  test "should get index" do
    get cache_flags_url
    assert_response :success
  end

  test "should get new" do
    get new_cache_flag_url
    assert_response :success
  end

  test "should create cache_flag" do
    assert_difference('CacheFlag.count') do
      post cache_flags_url, params: { cache_flag: { expiry: @cache_flag.expiry, flagtype: @cache_flag.flagtype, name: @cache_flag.name, timemodified: @cache_flag.timemodified, value: @cache_flag.value } }
    end

    assert_redirected_to cache_flag_url(CacheFlag.last)
  end

  test "should show cache_flag" do
    get cache_flag_url(@cache_flag)
    assert_response :success
  end

  test "should get edit" do
    get edit_cache_flag_url(@cache_flag)
    assert_response :success
  end

  test "should update cache_flag" do
    patch cache_flag_url(@cache_flag), params: { cache_flag: { expiry: @cache_flag.expiry, flagtype: @cache_flag.flagtype, name: @cache_flag.name, timemodified: @cache_flag.timemodified, value: @cache_flag.value } }
    assert_redirected_to cache_flag_url(@cache_flag)
  end

  test "should destroy cache_flag" do
    assert_difference('CacheFlag.count', -1) do
      delete cache_flag_url(@cache_flag)
    end

    assert_redirected_to cache_flags_url
  end
end
