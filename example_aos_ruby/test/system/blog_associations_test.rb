require "application_system_test_case"

class BlogAssociationsTest < ApplicationSystemTestCase
  setup do
    @blog_association = blog_associations(:one)
  end

  test "visiting the index" do
    visit blog_associations_url
    assert_selector "h1", text: "Blog Associations"
  end

  test "creating a Blog association" do
    visit blog_associations_url
    click_on "New Blog Association"

    fill_in "Blogid", with: @blog_association.blogid
    fill_in "Contextid", with: @blog_association.contextid
    click_on "Create Blog association"

    assert_text "Blog association was successfully created"
    click_on "Back"
  end

  test "updating a Blog association" do
    visit blog_associations_url
    click_on "Edit", match: :first

    fill_in "Blogid", with: @blog_association.blogid
    fill_in "Contextid", with: @blog_association.contextid
    click_on "Update Blog association"

    assert_text "Blog association was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog association" do
    visit blog_associations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog association was successfully destroyed"
  end
end
