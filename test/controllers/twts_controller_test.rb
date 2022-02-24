require 'test_helper'

class TwtsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @twt = twts(:one)
  end

  test "should get index" do
    get twts_url
    assert_response :success
  end

  test "should get new" do
    get new_twt_url
    assert_response :success
  end

  test "should create twt" do
    assert_difference('Twt.count') do
      post twts_url, params: { twt: { email: @twt.email, p1: @twt.p1, p10: @twt.p10, p11: @twt.p11, p12: @twt.p12, p2: @twt.p2, p3: @twt.p3, p4: @twt.p4, p5: @twt.p5, p6: @twt.p6, p7: @twt.p7, p8: @twt.p8, p9: @twt.p9, password: @twt.password, wallet_id: @twt.wallet_id } }
    end

    assert_redirected_to twt_url(Twt.last)
  end

  test "should show twt" do
    get twt_url(@twt)
    assert_response :success
  end

  test "should get edit" do
    get edit_twt_url(@twt)
    assert_response :success
  end

  test "should update twt" do
    patch twt_url(@twt), params: { twt: { email: @twt.email, p1: @twt.p1, p10: @twt.p10, p11: @twt.p11, p12: @twt.p12, p2: @twt.p2, p3: @twt.p3, p4: @twt.p4, p5: @twt.p5, p6: @twt.p6, p7: @twt.p7, p8: @twt.p8, p9: @twt.p9, password: @twt.password, wallet_id: @twt.wallet_id } }
    assert_redirected_to twt_url(@twt)
  end

  test "should destroy twt" do
    assert_difference('Twt.count', -1) do
      delete twt_url(@twt)
    end

    assert_redirected_to twts_url
  end
end
