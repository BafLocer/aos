require "application_system_test_case"

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test "visiting the index" do
    visit posts_url
    assert_selector "h1", text: "Posts"
  end

  test "creating a Post" do
    visit posts_url
    click_on "New Post"

    fill_in "Attachment", with: @post.attachment
    fill_in "Blog association", with: @post.blog_association_id
    fill_in "Content", with: @post.content
    fill_in "Courseid", with: @post.courseid
    fill_in "Coursemoduleid", with: @post.coursemoduleid
    fill_in "Created", with: @post.created
    fill_in "Format", with: @post.format
    fill_in "Groupid", with: @post.groupid
    fill_in "Lastmodified", with: @post.lastmodified
    fill_in "Module", with: @post.module
    fill_in "Moduleid", with: @post.moduleid
    fill_in "Publishstate", with: @post.publishstate
    fill_in "Rating", with: @post.rating
    fill_in "Subject", with: @post.subject
    fill_in "Summary", with: @post.summary
    fill_in "Summaryformat", with: @post.summaryformat
    fill_in "Uniquehash", with: @post.uniquehash
    fill_in "Userid", with: @post.userid
    fill_in "Usermodified", with: @post.usermodified
    click_on "Create Post"

    assert_text "Post was successfully created"
    click_on "Back"
  end

  test "updating a Post" do
    visit posts_url
    click_on "Edit", match: :first

    fill_in "Attachment", with: @post.attachment
    fill_in "Blog association", with: @post.blog_association_id
    fill_in "Content", with: @post.content
    fill_in "Courseid", with: @post.courseid
    fill_in "Coursemoduleid", with: @post.coursemoduleid
    fill_in "Created", with: @post.created
    fill_in "Format", with: @post.format
    fill_in "Groupid", with: @post.groupid
    fill_in "Lastmodified", with: @post.lastmodified
    fill_in "Module", with: @post.module
    fill_in "Moduleid", with: @post.moduleid
    fill_in "Publishstate", with: @post.publishstate
    fill_in "Rating", with: @post.rating
    fill_in "Subject", with: @post.subject
    fill_in "Summary", with: @post.summary
    fill_in "Summaryformat", with: @post.summaryformat
    fill_in "Uniquehash", with: @post.uniquehash
    fill_in "Userid", with: @post.userid
    fill_in "Usermodified", with: @post.usermodified
    click_on "Update Post"

    assert_text "Post was successfully updated"
    click_on "Back"
  end

  test "destroying a Post" do
    visit posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post was successfully destroyed"
  end
end
