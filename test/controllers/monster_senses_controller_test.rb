require "test_helper"

class MonsterSensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monster_senses_index_url
    assert_response :success
  end

  test "should get show" do
    get monster_senses_show_url
    assert_response :success
  end
end
