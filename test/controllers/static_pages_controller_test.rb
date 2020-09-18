require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  def setup
    @base_title = "instagram"
  end

  test "should get root" do
    get root_url
    assert_response :success
    assert_select "title", "instagram"
  end
end
