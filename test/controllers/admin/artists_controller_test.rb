require 'test_helper'

class Admin::ArtistsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_artists_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_artists_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_artists_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_artists_destroy_url
    assert_response :success
  end

end
