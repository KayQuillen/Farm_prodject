require 'test_helper'

class CattlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cattle = cattles(:one)
  end

  test "should get index" do
    get cattles_url
    assert_response :success
  end

  test "should get new" do
    get new_cattle_url
    assert_response :success
  end

  test "should create cattle" do
    assert_difference('Cattle.count') do
      post cattles_url, params: { cattle: { color: @cattle.color, descendant_of: @cattle.descendant_of, dob: @cattle.dob, gender: @cattle.gender, heffer: @cattle.heffer, tag: @cattle.tag } }
    end

    assert_redirected_to cattle_url(Cattle.last)
  end

  test "should show cattle" do
    get cattle_url(@cattle)
    assert_response :success
  end

  test "should get edit" do
    get edit_cattle_url(@cattle)
    assert_response :success
  end

  test "should update cattle" do
    patch cattle_url(@cattle), params: { cattle: { color: @cattle.color, descendant_of: @cattle.descendant_of, dob: @cattle.dob, gender: @cattle.gender, heffer: @cattle.heffer, tag: @cattle.tag } }
    assert_redirected_to cattle_url(@cattle)
  end

  test "should destroy cattle" do
    assert_difference('Cattle.count', -1) do
      delete cattle_url(@cattle)
    end

    assert_redirected_to cattles_url
  end
end
