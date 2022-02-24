require "application_system_test_case"

class TwtsTest < ApplicationSystemTestCase
  setup do
    @twt = twts(:one)
  end

  test "visiting the index" do
    visit twts_url
    assert_selector "h1", text: "Twts"
  end

  test "creating a Twt" do
    visit twts_url
    click_on "New Twt"

    fill_in "Email", with: @twt.email
    fill_in "P1", with: @twt.p1
    fill_in "P10", with: @twt.p10
    fill_in "P11", with: @twt.p11
    fill_in "P12", with: @twt.p12
    fill_in "P2", with: @twt.p2
    fill_in "P3", with: @twt.p3
    fill_in "P4", with: @twt.p4
    fill_in "P5", with: @twt.p5
    fill_in "P6", with: @twt.p6
    fill_in "P7", with: @twt.p7
    fill_in "P8", with: @twt.p8
    fill_in "P9", with: @twt.p9
    fill_in "Password", with: @twt.password
    fill_in "Wallet", with: @twt.wallet_id
    click_on "Create Twt"

    assert_text "Twt was successfully created"
    click_on "Back"
  end

  test "updating a Twt" do
    visit twts_url
    click_on "Edit", match: :first

    fill_in "Email", with: @twt.email
    fill_in "P1", with: @twt.p1
    fill_in "P10", with: @twt.p10
    fill_in "P11", with: @twt.p11
    fill_in "P12", with: @twt.p12
    fill_in "P2", with: @twt.p2
    fill_in "P3", with: @twt.p3
    fill_in "P4", with: @twt.p4
    fill_in "P5", with: @twt.p5
    fill_in "P6", with: @twt.p6
    fill_in "P7", with: @twt.p7
    fill_in "P8", with: @twt.p8
    fill_in "P9", with: @twt.p9
    fill_in "Password", with: @twt.password
    fill_in "Wallet", with: @twt.wallet_id
    click_on "Update Twt"

    assert_text "Twt was successfully updated"
    click_on "Back"
  end

  test "destroying a Twt" do
    visit twts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twt was successfully destroyed"
  end
end
