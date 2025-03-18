require "test_helper"

class SensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get senses_index_url
    assert_response :success
  end

  test "should get show" do
    get senses_show_url
    assert_response :success
  end
end
