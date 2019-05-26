require 'test_helper'

class SorcerycoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sorcerycore = sorcerycores(:one)
  end

  test "should get index" do
    get sorcerycores_url
    assert_response :success
  end

  test "should get new" do
    get new_sorcerycore_url
    assert_response :success
  end

  test "should create sorcerycore" do
    assert_difference('Sorcerycore.count') do
      post sorcerycores_url, params: { sorcerycore: { crypted_password: @sorcerycore.crypted_password, email: @sorcerycore.email, salt: @sorcerycore.salt } }
    end

    assert_redirected_to sorcerycore_url(Sorcerycore.last)
  end

  test "should show sorcerycore" do
    get sorcerycore_url(@sorcerycore)
    assert_response :success
  end

  test "should get edit" do
    get edit_sorcerycore_url(@sorcerycore)
    assert_response :success
  end

  test "should update sorcerycore" do
    patch sorcerycore_url(@sorcerycore), params: { sorcerycore: { crypted_password: @sorcerycore.crypted_password, email: @sorcerycore.email, salt: @sorcerycore.salt } }
    assert_redirected_to sorcerycore_url(@sorcerycore)
  end

  test "should destroy sorcerycore" do
    assert_difference('Sorcerycore.count', -1) do
      delete sorcerycore_url(@sorcerycore)
    end

    assert_redirected_to sorcerycores_url
  end
end
