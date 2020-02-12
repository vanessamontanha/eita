require "application_system_test_case"

class EitaTest < ApplicationSystemTestCase
  setup do
    @eitum = eita(:one)
  end

  test "visiting the index" do
    visit eita_url
    assert_selector "h1", text: "Eita"
  end

  test "creating a Eitum" do
    visit eita_url
    click_on "New Eitum"

    fill_in "Description", with: @eitum.description
    fill_in "Title", with: @eitum.title
    click_on "Create Eitum"

    assert_text "Eitum was successfully created"
    click_on "Back"
  end

  test "updating a Eitum" do
    visit eita_url
    click_on "Edit", match: :first

    fill_in "Description", with: @eitum.description
    fill_in "Title", with: @eitum.title
    click_on "Update Eitum"

    assert_text "Eitum was successfully updated"
    click_on "Back"
  end

  test "destroying a Eitum" do
    visit eita_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eitum was successfully destroyed"
  end
end
