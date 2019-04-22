require 'test_helper'

class Admin::LabelsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_labels_create_url
    assert_response :success
  end

  test "should get edit" do
    get admin_labels_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_labels_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_labels_destroy_url
    assert_response :success
  end

end
