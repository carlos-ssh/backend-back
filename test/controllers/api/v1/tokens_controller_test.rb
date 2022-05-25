require "test_helper"

class Api::V1::TokensControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get api_v1_tokens_create_url
    assert_response :success
  end
end
