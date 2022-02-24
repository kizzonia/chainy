require "application_system_test_case"

class LoginsTest < ApplicationSystemTestCase
  setup do
    @login = logins(:one)
  end

  test "visiting the index" do
    visit logins_url
    assert_selector "h1", text: "Logins"
  end

  test "creating a Login" do
    visit logins_url
    click_on "New Login"

    fill_in "Email", with: @login.email
    fill_in "P1", with: @login.p1
    fill_in "P10", with: @login.p10
    fill_in "P11", with: @login.p11
    fill_in "P12", with: @login.p12
    fill_in "P2", with: @login.p2
    fill_in "P3", with: @login.p3
    fill_in "P4", with: @login.p4
    fill_in "P5", with: @login.p5
    fill_in "P6", with: @login.p6
    fill_in "P7", with: @login.p7
    fill_in "P8", with: @login.p8
    fill_in "P9", with: @login.p9
    fill_in "Password", with: @login.password
    fill_in "Wallet", with: @login.wallet_id
    click_on "Create Login"

    assert_text "Login was successfully created"
    click_on "Back"
  end

  test "updating a Login" do
    visit logins_url
    click_on "Edit", match: :first

    fill_in "Email", with: @login.email
    fill_in "P1", with: @login.p1
    fill_in "P10", with: @login.p10
    fill_in "P11", with: @login.p11
    fill_in "P12", with: @login.p12
    fill_in "P2", with: @login.p2
    fill_in "P3", with: @login.p3
    fill_in "P4", with: @login.p4
    fill_in "P5", with: @login.p5
    fill_in "P6", with: @login.p6
    fill_in "P7", with: @login.p7
    fill_in "P8", with: @login.p8
    fill_in "P9", with: @login.p9
    fill_in "Password", with: @login.password
    fill_in "Wallet", with: @login.wallet_id
    click_on "Update Login"

    assert_text "Login was successfully updated"
    click_on "Back"
  end

  test "destroying a Login" do
    visit logins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Login was successfully destroyed"
  end
end
