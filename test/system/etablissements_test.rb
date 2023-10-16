require "application_system_test_case"

class EtablissementsTest < ApplicationSystemTestCase
  setup do
    @etablissement = etablissements(:one)
  end

  test "visiting the index" do
    visit etablissements_url
    assert_selector "h1", text: "Etablissements"
  end

  test "should create etablissement" do
    visit etablissements_url
    click_on "New etablissement"

    fill_in "Name", with: @etablissement.name
    click_on "Create Etablissement"

    assert_text "Etablissement was successfully created"
    click_on "Back"
  end

  test "should update Etablissement" do
    visit etablissement_url(@etablissement)
    click_on "Edit this etablissement", match: :first

    fill_in "Name", with: @etablissement.name
    click_on "Update Etablissement"

    assert_text "Etablissement was successfully updated"
    click_on "Back"
  end

  test "should destroy Etablissement" do
    visit etablissement_url(@etablissement)
    click_on "Destroy this etablissement", match: :first

    assert_text "Etablissement was successfully destroyed"
  end
end
