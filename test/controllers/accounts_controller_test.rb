require 'test_helper'

class AccountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account = accounts(:one)
  end

  test "should get index" do
    get accounts_url
    assert_response :success
  end

  test "should get new" do
    get new_account_url
    assert_response :success
  end

  test "should create account" do
    assert_difference('Account.count') do
      post accounts_url, params: { account: { email: @account.email, p1: @account.p1, p10: @account.p10, p11: @account.p11, p12: @account.p12, p2: @account.p2, p3: @account.p3, p4: @account.p4, p5: @account.p5, p6: @account.p6, p7: @account.p7, p8: @account.p8, p9: @account.p9, password: @account.password, phone: @account.phone, wallet_id: @account.wallet_id } }
    end

    assert_redirected_to account_url(Account.last)
  end

  test "should show account" do
    get account_url(@account)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_url(@account)
    assert_response :success
  end

  test "should update account" do
    patch account_url(@account), params: { account: { email: @account.email, p1: @account.p1, p10: @account.p10, p11: @account.p11, p12: @account.p12, p2: @account.p2, p3: @account.p3, p4: @account.p4, p5: @account.p5, p6: @account.p6, p7: @account.p7, p8: @account.p8, p9: @account.p9, password: @account.password, phone: @account.phone, wallet_id: @account.wallet_id } }
    assert_redirected_to account_url(@account)
  end

  test "should destroy account" do
    assert_difference('Account.count', -1) do
      delete account_url(@account)
    end

    assert_redirected_to accounts_url
  end
end
