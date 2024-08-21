require "application_system_test_case"

class JournalistsTest < ApplicationSystemTestCase
  setup do
    @journalist = journalists(:one)
  end

  test "visiting the index" do
    visit journalists_url
    assert_selector "h1", text: "Journalists"
  end

  test "should create journalist" do
    visit journalists_url
    click_on "New journalist"

    fill_in "Bio", with: @journalist.bio
    check "Is editor" if @journalist.is_editor
    fill_in "Name", with: @journalist.name
    fill_in "User", with: @journalist.user_id
    click_on "Create Journalist"

    assert_text "Journalist was successfully created"
    click_on "Back"
  end

  test "should update Journalist" do
    visit journalist_url(@journalist)
    click_on "Edit this journalist", match: :first

    fill_in "Bio", with: @journalist.bio
    check "Is editor" if @journalist.is_editor
    fill_in "Name", with: @journalist.name
    fill_in "User", with: @journalist.user_id
    click_on "Update Journalist"

    assert_text "Journalist was successfully updated"
    click_on "Back"
  end

  test "should destroy Journalist" do
    visit journalist_url(@journalist)
    click_on "Destroy this journalist", match: :first

    assert_text "Journalist was successfully destroyed"
  end
end
