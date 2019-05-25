require 'test_helper'

class AssignfeedbackEditpdfAnnotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignfeedback_editpdf_annot = assignfeedback_editpdf_annots(:one)
  end

  test "should get index" do
    get assignfeedback_editpdf_annots_url
    assert_response :success
  end

  test "should get new" do
    get new_assignfeedback_editpdf_annot_url
    assert_response :success
  end

  test "should create assignfeedback_editpdf_annot" do
    assert_difference('AssignfeedbackEditpdfAnnot.count') do
      post assignfeedback_editpdf_annots_url, params: { assignfeedback_editpdf_annot: { colour: @assignfeedback_editpdf_annot.colour, draft: @assignfeedback_editpdf_annot.draft, endx: @assignfeedback_editpdf_annot.endx, endy: @assignfeedback_editpdf_annot.endy, gradeid: @assignfeedback_editpdf_annot.gradeid, pageno: @assignfeedback_editpdf_annot.pageno, path: @assignfeedback_editpdf_annot.path, type: @assignfeedback_editpdf_annot.type, x: @assignfeedback_editpdf_annot.x, y: @assignfeedback_editpdf_annot.y } }
    end

    assert_redirected_to assignfeedback_editpdf_annot_url(AssignfeedbackEditpdfAnnot.last)
  end

  test "should show assignfeedback_editpdf_annot" do
    get assignfeedback_editpdf_annot_url(@assignfeedback_editpdf_annot)
    assert_response :success
  end

  test "should get edit" do
    get edit_assignfeedback_editpdf_annot_url(@assignfeedback_editpdf_annot)
    assert_response :success
  end

  test "should update assignfeedback_editpdf_annot" do
    patch assignfeedback_editpdf_annot_url(@assignfeedback_editpdf_annot), params: { assignfeedback_editpdf_annot: { colour: @assignfeedback_editpdf_annot.colour, draft: @assignfeedback_editpdf_annot.draft, endx: @assignfeedback_editpdf_annot.endx, endy: @assignfeedback_editpdf_annot.endy, gradeid: @assignfeedback_editpdf_annot.gradeid, pageno: @assignfeedback_editpdf_annot.pageno, path: @assignfeedback_editpdf_annot.path, type: @assignfeedback_editpdf_annot.type, x: @assignfeedback_editpdf_annot.x, y: @assignfeedback_editpdf_annot.y } }
    assert_redirected_to assignfeedback_editpdf_annot_url(@assignfeedback_editpdf_annot)
  end

  test "should destroy assignfeedback_editpdf_annot" do
    assert_difference('AssignfeedbackEditpdfAnnot.count', -1) do
      delete assignfeedback_editpdf_annot_url(@assignfeedback_editpdf_annot)
    end

    assert_redirected_to assignfeedback_editpdf_annots_url
  end
end
