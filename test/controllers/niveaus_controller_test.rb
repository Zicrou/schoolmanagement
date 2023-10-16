require "test_helper"

class NiveausControllerTest < ActionDispatch::IntegrationTest
  setup do
    @niveau = niveaus(:one)
  end

  test "should get index" do
    get niveaus_url
    assert_response :success
  end

  test "should get new" do
    get new_niveau_url
    assert_response :success
  end

  test "should create niveau" do
    assert_difference("Niveau.count") do
      post niveaus_url, params: { niveau: { nom: @niveau.nom } }
    end

    assert_redirected_to niveau_url(Niveau.last)
  end

  test "should show niveau" do
    get niveau_url(@niveau)
    assert_response :success
  end

  test "should get edit" do
    get edit_niveau_url(@niveau)
    assert_response :success
  end

  test "should update niveau" do
    patch niveau_url(@niveau), params: { niveau: { nom: @niveau.nom } }
    assert_redirected_to niveau_url(@niveau)
  end

  test "should destroy niveau" do
    assert_difference("Niveau.count", -1) do
      delete niveau_url(@niveau)
    end

    assert_redirected_to niveaus_url
  end
end
