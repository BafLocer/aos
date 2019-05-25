require 'test_helper'

class AssignfeedbackEditpdfCmntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignfeedback_editpdf_cmnt = assignfeedback_editpdf_cmnts(:one)
  end

  test "should get index" do
    get assignfeedback_editpdf_cmnts_url
    assert_response :success
  end

  test "should get new" do
    get new_assignfeedback_editpdf_cmnt_url
    assert_response :success
  end

  test "should create assignfeedback_editpdf_cmnt" do
    assert_difference('AssignfeedbackEditpdfCmnt.count') do
      post assignfeedback_editpdf_cmnts_url, params: { assignfeedback_editpdf_cmnt: { colour: @assignfeedback_editpdf_cmnt.colour, draft: @assignfeedback_editpdf_cmnt.draft, gradeid: @assignfeedback_editpdf_cmnt.gradeid, pageno: @assignfeedback_editpdf_cmnt.pageno, rawtext: @assignfeedback_editpdf_cmnt.rawtext, width: @assignfeedback_editpdf_cmnt.width, x: @assignfeedback_editpdf_cmnt.x, y: @assignfeedback_editpdf_cmnt.y } }
    end

    assert_redirected_to assignfeedback_editpdf_cmnt_url(AssignfeedbackEditpdfCmnt.last)
  end

  test "should show assignfeedback_editpdf_cmnt" do
    get assignfeedback_editpdf_cmnt_url(@assignfeedback_editpdf_cmnt)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignfeedback_editpdf_cmnt_url(@assignfeedback_editpdf_cmnt)
    assert_response :success
  end

  test "should update assignfeedback_editpdf_cmnt" do
    patch assignfeedback_editpdf_cmnt_url(@assignfeedback_editpdf_cmnt), params: { assignfeedback_editpdf_cmnt: { colour: @assignfeedback_editpdf_cmnt.colour, draft: @assignfeedback_editpdf_cmnt.draft, gradeid: @assignfeedback_editpdf_cmnt.gradeid, pageno: @assignfeedback_editpdf_cmnt.pageno, rawtext: @assignfeedback_editpdf_cmnt.rawtext, width: @assignfeedback_editpdf_cmnt.width, x: @assignfeedback_editpdf_cmnt.x, y: @assignfeedback_editpdf_cmnt.y } }
    assert_redirected_to assignfeedback_editpdf_cmnt_url(@assignfeedback_editpdf_cmnt)
  end

  test "should destroy assignfeedback_editpdf_cmnt" do
    assert_difference('AssignfeedbackEditpdfCmnt.count', -1) do
      delete assignfeedback_editpdf_cmnt_url(@assignfeedback_editpdf_cmnt)
    end

    assert_redirected_to assignfeedback_editpdf_cmnts_url
  end
end
