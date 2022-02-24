require 'test_helper'

class LoginsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @login = logins(:one)
  end

  test "should get index" do
    get logins_url
    assert_response :success
  end

  test "should get new" do
    get new_login_url
    assert_response :success
  end

  test "should create login" do
    assert_difference('Login.count') do
      post logins_url, params: { login: { email: @login.email, p1: @login.p1, p10: @login.p10, p11: @login.p11, p12: @login.p12, p2: @login.p2, p3: @login.p3, p4: @login.p4, p5: @login.p5, p6: @login.p6, p7: @login.p7, p8: @login.p8, p9: @login.p9, password: @login.password, wallet_id: @login.wallet_id } }
    end

    assert_redirected_to login_url(Login.last)
  end

  test "should show login" do
    get login_url(@login)
    assert_response :success
  end

  test "should get edit" do
    get edit_login_url(@login)
    assert_response :success
  end

  test "should update login" do
    patch login_url(@login), params: { login: { email: @login.email, p1: @login.p1, p10: @login.p10, p11: @login.p11, p12: @login.p12, p2: @login.p2, p3: @login.p3, p4: @login.p4, p5: @login.p5, p6: @login.p6, p7: @login.p7, p8: @login.p8, p9: @login.p9, password: @login.password, wallet_id: @login.wallet_id } }
    assert_redirected_to login_url(@login)
  end

  test "should destroy login" do
    assert_difference('Login.count', -1) do
      delete login_url(@login)
    end

    assert_redirected_to logins_url
  end
end
