require "application_system_test_case"

class DucksTest < ApplicationSystemTestCase
  setup do
    @duck = ducks(:one)
  end

  test "visiting the index" do
    visit ducks_url
    assert_selector "h1", text: "Ducks"
  end

  test "creating a Duck" do
    visit ducks_url
    click_on "New Duck"

    fill_in "Description", with: @duck.description
    fill_in "Name", with: @duck.name
    click_on "Create Duck"

    assert_text "Duck was successfully created"
    click_on "Back"
  end

  test "updating a Duck" do
    visit ducks_url
    click_on "Edit", match: :first

    fill_in "Description", with: @duck.description
    fill_in "Name", with: @duck.name
    click_on "Update Duck"

    assert_text "Duck was successfully updated"
    click_on "Back"
  end

  test "destroying a Duck" do
    visit ducks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Duck was successfully destroyed"
  end
end
