require 'test_helper'

class Public::CdsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get public_cds_index_url
    assert_response :success
  end

  test "should get show" do
    get public_cds_show_url
    assert_response :success
  end

end
