require "application_system_test_case"

class BlogExternalsTest < ApplicationSystemTestCase
  setup do
    @blog_external = blog_externals(:one)
  end

  test "visiting the index" do
    visit blog_externals_url
    assert_selector "h1", text: "Blog Externals"
  end

  test "creating a Blog external" do
    visit blog_externals_url
    click_on "New Blog External"

    fill_in "Description", with: @blog_external.description
    fill_in "Failedlastsync", with: @blog_external.failedlastsync
    fill_in "Filtertags", with: @blog_external.filtertags
    fill_in "Id", with: @blog_external.id
    fill_in "Name", with: @blog_external.name
    fill_in "Timefetched", with: @blog_external.timefetched
    fill_in "Timemodified", with: @blog_external.timemodified
    fill_in "Url", with: @blog_external.url
    fill_in "Userid", with: @blog_external.userid
    click_on "Create Blog external"

    assert_text "Blog external was successfully created"
    click_on "Back"
  end

  test "updating a Blog external" do
    visit blog_externals_url
    click_on "Edit", match: :first

    fill_in "Description", with: @blog_external.description
    fill_in "Failedlastsync", with: @blog_external.failedlastsync
    fill_in "Filtertags", with: @blog_external.filtertags
    fill_in "Id", with: @blog_external.id
    fill_in "Name", with: @blog_external.name
    fill_in "Timefetched", with: @blog_external.timefetched
    fill_in "Timemodified", with: @blog_external.timemodified
    fill_in "Url", with: @blog_external.url
    fill_in "Userid", with: @blog_external.userid
    click_on "Update Blog external"

    assert_text "Blog external was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog external" do
    visit blog_externals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog external was successfully destroyed"
  end
end
