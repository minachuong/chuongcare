require 'test_helper'

class CareshipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @careship = careships(:one)
  end

  test "should get index" do
    get careships_url
    assert_response :success
  end

  test "should get new" do
    get new_careship_url
    assert_response :success
  end

  test "should create careship" do
    assert_difference('Careship.count') do
      post careships_url, params: { careship: {  } }
    end

    assert_redirected_to careship_url(Careship.last)
  end

  test "should show careship" do
    get careship_url(@careship)
    assert_response :success
  end

  test "should get edit" do
    get edit_careship_url(@careship)
    assert_response :success
  end

  test "should update careship" do
    patch careship_url(@careship), params: { careship: {  } }
    assert_redirected_to careship_url(@careship)
  end

  test "should destroy careship" do
    assert_difference('Careship.count', -1) do
      delete careship_url(@careship)
    end

    assert_redirected_to careships_url
  end
end
