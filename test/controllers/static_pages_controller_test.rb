require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "instagram"
  end

  test "should get root" do
    get root_path
    assert_response :success
    assert_select "title", "Home | instagram"
  end

  test "should get terms" do
    get terms_path
    assert_response :success
    assert_select "title", "Terms | instagram"
  end
end
