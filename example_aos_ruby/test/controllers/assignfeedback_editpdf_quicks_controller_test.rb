require 'test_helper'

class AssignfeedbackEditpdfQuicksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignfeedback_editpdf_quick = assignfeedback_editpdf_quicks(:one)
  end

  test "should get index" do
    get assignfeedback_editpdf_quicks_url
    assert_response :success
  end

  test "should get new" do
    get new_assignfeedback_editpdf_quick_url
    assert_response :success
  end

  test "should create assignfeedback_editpdf_quick" do
    assert_difference('AssignfeedbackEditpdfQuick.count') do
      post assignfeedback_editpdf_quicks_url, params: { assignfeedback_editpdf_quick: { colour: @assignfeedback_editpdf_quick.colour, rawtext: @assignfeedback_editpdf_quick.rawtext, userid: @assignfeedback_editpdf_quick.userid, width: @assignfeedback_editpdf_quick.width } }
    end

    assert_redirected_to assignfeedback_editpdf_quick_url(AssignfeedbackEditpdfQuick.last)
  end

  test "should show assignfeedback_editpdf_quick" do
    get assignfeedback_editpdf_quick_url(@assignfeedback_editpdf_quick)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignfeedback_editpdf_quick_url(@assignfeedback_editpdf_quick)
    assert_response :success
  end

  test "should update assignfeedback_editpdf_quick" do
    patch assignfeedback_editpdf_quick_url(@assignfeedback_editpdf_quick), params: { assignfeedback_editpdf_quick: { colour: @assignfeedback_editpdf_quick.colour, rawtext: @assignfeedback_editpdf_quick.rawtext, userid: @assignfeedback_editpdf_quick.userid, width: @assignfeedback_editpdf_quick.width } }
    assert_redirected_to assignfeedback_editpdf_quick_url(@assignfeedback_editpdf_quick)
  end

  test "should destroy assignfeedback_editpdf_quick" do
    assert_difference('AssignfeedbackEditpdfQuick.count', -1) do
      delete assignfeedback_editpdf_quick_url(@assignfeedback_editpdf_quick)
    end

    assert_redirected_to assignfeedback_editpdf_quicks_url
  end
end
