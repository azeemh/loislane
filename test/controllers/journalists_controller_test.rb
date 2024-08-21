require "test_helper"

class JournalistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @journalist = journalists(:one)
  end

  test "should get index" do
    get journalists_url
    assert_response :success
  end

  test "should get new" do
    get new_journalist_url
    assert_response :success
  end

  test "should create journalist" do
    assert_difference("Journalist.count") do
      post journalists_url, params: { journalist: { bio: @journalist.bio, is_editor: @journalist.is_editor, name: @journalist.name, user_id: @journalist.user_id } }
    end

    assert_redirected_to journalist_url(Journalist.last)
  end

  test "should show journalist" do
    get journalist_url(@journalist)
    assert_response :success
  end

  test "should get edit" do
    get edit_journalist_url(@journalist)
    assert_response :success
  end

  test "should update journalist" do
    patch journalist_url(@journalist), params: { journalist: { bio: @journalist.bio, is_editor: @journalist.is_editor, name: @journalist.name, user_id: @journalist.user_id } }
    assert_redirected_to journalist_url(@journalist)
  end

  test "should destroy journalist" do
    assert_difference("Journalist.count", -1) do
      delete journalist_url(@journalist)
    end

    assert_redirected_to journalists_url
  end
end
