require "test_helper"

class PostulationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get postulation_create_url
    assert_response :success
  end

  test "should get destroy" do
    get postulation_destroy_url
    assert_response :success
  end
end
