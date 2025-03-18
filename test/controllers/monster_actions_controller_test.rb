require "test_helper"

class MonsterActionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monster_actions_index_url
    assert_response :success
  end

  test "should get show" do
    get monster_actions_show_url
    assert_response :success
  end
end
