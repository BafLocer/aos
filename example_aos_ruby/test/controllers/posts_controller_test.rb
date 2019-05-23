require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { attachment: @post.attachment, blog_association_id: @post.blog_association_id, content: @post.content, courseid: @post.courseid, coursemoduleid: @post.coursemoduleid, created: @post.created, format: @post.format, groupid: @post.groupid, lastmodified: @post.lastmodified, module: @post.module, moduleid: @post.moduleid, publishstate: @post.publishstate, rating: @post.rating, subject: @post.subject, summary: @post.summary, summaryformat: @post.summaryformat, uniquehash: @post.uniquehash, userid: @post.userid, usermodified: @post.usermodified } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { attachment: @post.attachment, blog_association_id: @post.blog_association_id, content: @post.content, courseid: @post.courseid, coursemoduleid: @post.coursemoduleid, created: @post.created, format: @post.format, groupid: @post.groupid, lastmodified: @post.lastmodified, module: @post.module, moduleid: @post.moduleid, publishstate: @post.publishstate, rating: @post.rating, subject: @post.subject, summary: @post.summary, summaryformat: @post.summaryformat, uniquehash: @post.uniquehash, userid: @post.userid, usermodified: @post.usermodified } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
