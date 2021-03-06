require 'test_helper'

class SideLayoutTest < ActionDispatch::IntegrationTest
	test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=/root]", root_path, count: 2
    assert_select "a[href=/help]", help_path
    assert_select "a[href=/about]", about_path
    assert_select "a[href=/contact]", contact_path
    #get signup_path
    #assert_select "title", full_title("Sign up")
  end
end
