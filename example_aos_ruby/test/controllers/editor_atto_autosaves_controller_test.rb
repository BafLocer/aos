require 'test_helper'

class EditorAttoAutosavesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @editor_atto_autosafe = editor_atto_autosaves(:one)
  end

  test "should get index" do
    get editor_atto_autosaves_url
    assert_response :success
  end

  test "should get new" do
    get new_editor_atto_autosafe_url
    assert_response :success
  end

  test "should create editor_atto_autosafe" do
    assert_difference('EditorAttoAutosave.count') do
      post editor_atto_autosaves_url, params: { editor_atto_autosafe: { contextid: @editor_atto_autosafe.contextid, draftid: @editor_atto_autosafe.draftid, drafttext: @editor_atto_autosafe.drafttext, elementid: @editor_atto_autosafe.elementid, pagehash: @editor_atto_autosafe.pagehash, pageinstance: @editor_atto_autosafe.pageinstance, timemodified: @editor_atto_autosafe.timemodified, userid: @editor_atto_autosafe.userid } }
    end

    assert_redirected_to editor_atto_autosafe_url(EditorAttoAutosave.last)
  end

  test "should show editor_atto_autosafe" do
    get editor_atto_autosafe_url(@editor_atto_autosafe)
    assert_response :success
  end

  test "should get edit" do
    get edit_editor_atto_autosafe_url(@editor_atto_autosafe)
    assert_response :success
  end

  test "should update editor_atto_autosafe" do
    patch editor_atto_autosafe_url(@editor_atto_autosafe), params: { editor_atto_autosafe: { contextid: @editor_atto_autosafe.contextid, draftid: @editor_atto_autosafe.draftid, drafttext: @editor_atto_autosafe.drafttext, elementid: @editor_atto_autosafe.elementid, pagehash: @editor_atto_autosafe.pagehash, pageinstance: @editor_atto_autosafe.pageinstance, timemodified: @editor_atto_autosafe.timemodified, userid: @editor_atto_autosafe.userid } }
    assert_redirected_to editor_atto_autosafe_url(@editor_atto_autosafe)
  end

  test "should destroy editor_atto_autosafe" do
    assert_difference('EditorAttoAutosave.count', -1) do
      delete editor_atto_autosafe_url(@editor_atto_autosafe)
    end

    assert_redirected_to editor_atto_autosaves_url
  end
end
