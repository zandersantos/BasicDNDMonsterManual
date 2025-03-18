require "test_helper"

class MonsterImagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monster_images_index_url
    assert_response :success
  end

  test "should get show" do
    get monster_images_show_url
    assert_response :success
  end
end
