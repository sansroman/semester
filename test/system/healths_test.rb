require "application_system_test_case"

class HealthsTest < ApplicationSystemTestCase
  setup do
    @health = healths(:one)
  end

  test "visiting the index" do
    visit healths_url
    assert_selector "h1", text: "Healths"
  end

  test "creating a Health" do
    visit healths_url
    click_on "New Health"

    fill_in "Birthday", with: @health.birthday
    fill_in "Exercise", with: @health.exercise
    fill_in "Height", with: @health.height
    fill_in "Step", with: @health.step
    fill_in "Target", with: @health.target
    fill_in "User", with: @health.user_id
    fill_in "Weight", with: @health.weight
    click_on "Create Health"

    assert_text "Health was successfully created"
    click_on "Back"
  end

  test "updating a Health" do
    visit healths_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @health.birthday
    fill_in "Exercise", with: @health.exercise
    fill_in "Height", with: @health.height
    fill_in "Step", with: @health.step
    fill_in "Target", with: @health.target
    fill_in "User", with: @health.user_id
    fill_in "Weight", with: @health.weight
    click_on "Update Health"

    assert_text "Health was successfully updated"
    click_on "Back"
  end

  test "destroying a Health" do
    visit healths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Health was successfully destroyed"
  end
end
