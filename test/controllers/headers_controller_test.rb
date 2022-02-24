require 'test_helper'

class HeadersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @header = headers(:one)
  end

  test "should get index" do
    get headers_url
    assert_response :success
  end

  test "should get new" do
    get new_header_url
    assert_response :success
  end

  test "should create header" do
    assert_difference('Header.count') do
      post headers_url, params: { header: { abouts_sub_title: @header.abouts_sub_title, abouts_title: @header.abouts_title } }
    end

    assert_redirected_to header_url(Header.last)
  end

  test "should show header" do
    get header_url(@header)
    assert_response :success
  end

  test "should get edit" do
    get edit_header_url(@header)
    assert_response :success
  end

  test "should update header" do
    patch header_url(@header), params: { header: { abouts_sub_title: @header.abouts_sub_title, abouts_title: @header.abouts_title } }
    assert_redirected_to header_url(@header)
  end

  test "should destroy header" do
    assert_difference('Header.count', -1) do
      delete header_url(@header)
    end

    assert_redirected_to headers_url
  end
end
