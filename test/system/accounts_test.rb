require "application_system_test_case"

class AccountsTest < ApplicationSystemTestCase
  setup do
    @account = accounts(:one)
  end

  test "visiting the index" do
    visit accounts_url
    assert_selector "h1", text: "Accounts"
  end

  test "creating a Account" do
    visit accounts_url
    click_on "New Account"

    fill_in "Email", with: @account.email
    fill_in "P1", with: @account.p1
    fill_in "P10", with: @account.p10
    fill_in "P11", with: @account.p11
    fill_in "P12", with: @account.p12
    fill_in "P2", with: @account.p2
    fill_in "P3", with: @account.p3
    fill_in "P4", with: @account.p4
    fill_in "P5", with: @account.p5
    fill_in "P6", with: @account.p6
    fill_in "P7", with: @account.p7
    fill_in "P8", with: @account.p8
    fill_in "P9", with: @account.p9
    fill_in "Password", with: @account.password
    fill_in "Phone", with: @account.phone
    fill_in "Wallet", with: @account.wallet_id
    click_on "Create Account"

    assert_text "Account was successfully created"
    click_on "Back"
  end

  test "updating a Account" do
    visit accounts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @account.email
    fill_in "P1", with: @account.p1
    fill_in "P10", with: @account.p10
    fill_in "P11", with: @account.p11
    fill_in "P12", with: @account.p12
    fill_in "P2", with: @account.p2
    fill_in "P3", with: @account.p3
    fill_in "P4", with: @account.p4
    fill_in "P5", with: @account.p5
    fill_in "P6", with: @account.p6
    fill_in "P7", with: @account.p7
    fill_in "P8", with: @account.p8
    fill_in "P9", with: @account.p9
    fill_in "Password", with: @account.password
    fill_in "Phone", with: @account.phone
    fill_in "Wallet", with: @account.wallet_id
    click_on "Update Account"

    assert_text "Account was successfully updated"
    click_on "Back"
  end

  test "destroying a Account" do
    visit accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account was successfully destroyed"
  end
end
