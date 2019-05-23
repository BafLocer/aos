require 'test_helper'

class BlogAssociationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_association = blog_associations(:one)
  end

  test "should get index" do
    get blog_associations_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_association_url
    assert_response :success
  end

  test "should create blog_association" do
    assert_difference('BlogAssociation.count') do
      post blog_associations_url, params: { blog_association: { blogid: @blog_association.blogid, contextid: @blog_association.contextid } }
    end

    assert_redirected_to blog_association_url(BlogAssociation.last)
  end

  test "should show blog_association" do
    get blog_association_url(@blog_association)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_association_url(@blog_association)
    assert_response :success
  end

  test "should update blog_association" do
    patch blog_association_url(@blog_association), params: { blog_association: { blogid: @blog_association.blogid, contextid: @blog_association.contextid } }
    assert_redirected_to blog_association_url(@blog_association)
  end

  test "should destroy blog_association" do
    assert_difference('BlogAssociation.count', -1) do
      delete blog_association_url(@blog_association)
    end

    assert_redirected_to blog_associations_url
  end
end
