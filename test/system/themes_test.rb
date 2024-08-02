require "application_system_test_case"

class ThemesTest < ApplicationSystemTestCase
  setup do
    @theme = themes(:one)
  end

  test "visiting the index" do
    visit themes_url
    assert_selector "h1", text: "Themes"
  end

  test "should create theme" do
    visit themes_url
    click_on "New theme"

    fill_in "Backgroundcolor", with: @theme.backgroundcolor
    fill_in "Customcss", with: @theme.customcss
    fill_in "Headingcolor", with: @theme.headingcolor
    fill_in "Maxwidth", with: @theme.maxwidth
    fill_in "Name", with: @theme.name
    fill_in "Primarycolor", with: @theme.primarycolor
    fill_in "Quaternarycolor", with: @theme.quaternarycolor
    fill_in "Secondarycolor", with: @theme.secondarycolor
    fill_in "Tertiarycolor", with: @theme.tertiarycolor
    fill_in "Textcolor", with: @theme.textcolor
    click_on "Create Theme"

    assert_text "Theme was successfully created"
    click_on "Back"
  end

  test "should update Theme" do
    visit theme_url(@theme)
    click_on "Edit this theme", match: :first

    fill_in "Backgroundcolor", with: @theme.backgroundcolor
    fill_in "Customcss", with: @theme.customcss
    fill_in "Headingcolor", with: @theme.headingcolor
    fill_in "Maxwidth", with: @theme.maxwidth
    fill_in "Name", with: @theme.name
    fill_in "Primarycolor", with: @theme.primarycolor
    fill_in "Quaternarycolor", with: @theme.quaternarycolor
    fill_in "Secondarycolor", with: @theme.secondarycolor
    fill_in "Tertiarycolor", with: @theme.tertiarycolor
    fill_in "Textcolor", with: @theme.textcolor
    click_on "Update Theme"

    assert_text "Theme was successfully updated"
    click_on "Back"
  end

  test "should destroy Theme" do
    visit theme_url(@theme)
    click_on "Destroy this theme", match: :first

    assert_text "Theme was successfully destroyed"
  end
end
