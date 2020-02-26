require 'test_helper'

class DucksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @duck = ducks(:one)
  end

  test "should get index" do
    get ducks_url
    assert_response :success
  end

  test "should get new" do
    get new_duck_url
    assert_response :success
  end

  test "should create duck" do
    assert_difference('Duck.count') do
      post ducks_url, params: { duck: { description: @duck.description, name: @duck.name } }
    end

    assert_redirected_to duck_url(Duck.last)
  end

  test "should show duck" do
    get duck_url(@duck)
    assert_response :success
  end

  test "should get edit" do
    get edit_duck_url(@duck)
    assert_response :success
  end

  test "should update duck" do
    patch duck_url(@duck), params: { duck: { description: @duck.description, name: @duck.name } }
    assert_redirected_to duck_url(@duck)
  end

  test "should destroy duck" do
    assert_difference('Duck.count', -1) do
      delete duck_url(@duck)
    end

    assert_redirected_to ducks_url
  end
end
