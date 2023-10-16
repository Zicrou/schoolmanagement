require "application_system_test_case"

class NiveausTest < ApplicationSystemTestCase
  setup do
    @niveau = niveaus(:one)
  end

  test "visiting the index" do
    visit niveaus_url
    assert_selector "h1", text: "Niveaus"
  end

  test "should create niveau" do
    visit niveaus_url
    click_on "New niveau"

    fill_in "Nom", with: @niveau.nom
    click_on "Create Niveau"

    assert_text "Niveau was successfully created"
    click_on "Back"
  end

  test "should update Niveau" do
    visit niveau_url(@niveau)
    click_on "Edit this niveau", match: :first

    fill_in "Nom", with: @niveau.nom
    click_on "Update Niveau"

    assert_text "Niveau was successfully updated"
    click_on "Back"
  end

  test "should destroy Niveau" do
    visit niveau_url(@niveau)
    click_on "Destroy this niveau", match: :first

    assert_text "Niveau was successfully destroyed"
  end
end
