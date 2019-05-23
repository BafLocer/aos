require 'test_helper'

class BlogExternalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_external = blog_externals(:one)
  end

  test "should get index" do
    get blog_externals_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_external_url
    assert_response :success
  end

  test "should create blog_external" do
    assert_difference('BlogExternal.count') do
      post blog_externals_url, params: { blog_external: { description: @blog_external.description, failedlastsync: @blog_external.failedlastsync, filtertags: @blog_external.filtertags, name: @blog_external.name, timefetched: @blog_external.timefetched, timemodified: @blog_external.timemodified, url: @blog_external.url, userid: @blog_external.userid } }
    end

    assert_redirected_to blog_external_url(BlogExternal.last)
  end

  test "should show blog_external" do
    get blog_external_url(@blog_external)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_external_url(@blog_external)
    assert_response :success
  end

  test "should update blog_external" do
    patch blog_external_url(@blog_external), params: { blog_external: { description: @blog_external.description, failedlastsync: @blog_external.failedlastsync, filtertags: @blog_external.filtertags, name: @blog_external.name, timefetched: @blog_external.timefetched, timemodified: @blog_external.timemodified, url: @blog_external.url, userid: @blog_external.userid } }
    assert_redirected_to blog_external_url(@blog_external)
  end

  test "should destroy blog_external" do
    assert_difference('BlogExternal.count', -1) do
      delete blog_external_url(@blog_external)
    end

    assert_redirected_to blog_externals_url
  end
end
