require 'test_helper'

class PageControllerTest < ActionDispatch::IntegrationTest
  test "should get root page" do
    get "/"
    assert_response :success

    assert_select "h1", "Root File"
    assert_select "p", "This is supposed to be the main page!"
  end

  test "should get about_me" do
    get "/about_me"
    assert_response :success

    assert_select "body" do
      assert_select "h1"
      assert_select "p"
      assert_select "ol" do
        assert_select "li", 4
      end
    end
  end
end
