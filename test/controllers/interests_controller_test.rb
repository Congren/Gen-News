require 'test_helper'

class InterestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @interest = interests(:one)
  end

  test "should get index" do
    get interests_url
    assert_response :success
  end

  test "should get new" do
    get new_interest_url
    assert_response :success
  end

  test "should create interest" do
    assert_difference('Interest.count') do
      post interests_url, params: { interest: { economy: @interest.economy, fashion: @interest.fashion, gadget: @interest.gadget, lifestyle: @interest.lifestyle, local: @interest.local, location_id: @interest.location_id, national: @interest.national, politics: @interest.politics, sports: @interest.sports, weather: @interest.weather, world: @interest.world } }
    end

    assert_redirected_to interest_url(Interest.last)
  end

  test "should show interest" do
    get interest_url(@interest)
    assert_response :success
  end

  test "should get edit" do
    get edit_interest_url(@interest)
    assert_response :success
  end

  test "should update interest" do
    patch interest_url(@interest), params: { interest: { economy: @interest.economy, fashion: @interest.fashion, gadget: @interest.gadget, lifestyle: @interest.lifestyle, local: @interest.local, location_id: @interest.location_id, national: @interest.national, politics: @interest.politics, sports: @interest.sports, weather: @interest.weather, world: @interest.world } }
    assert_redirected_to interest_url(@interest)
  end

  test "should destroy interest" do
    assert_difference('Interest.count', -1) do
      delete interest_url(@interest)
    end

    assert_redirected_to interests_url
  end
end
