require 'test_helper'

class CareReceiversControllerTest < ActionDispatch::IntegrationTest
  setup do
    @care_receiver = care_receivers(:one)
  end



  # test "should get index" do
  #   get care_receivers_url
  #   assert_response :success
  # end
  #
  # test "should get new" do
  #   get new_care_receiver_url
  #   assert_response :success
  # end
  #
  # test "should create care_receiver" do
  #   assert_difference('care_receiver.count') do
  #     post care_receivers_url, params: { care_receiver: {  } }
  #   end
  #
  #   assert_redirected_to care_receiver_url(care_receiver.last)
  # end
  #
  # test "should show care_receiver" do
  #   get care_receiver_url(@care_receiver)
  #   assert_response :success
  # end
  #
  # test "should get edit" do
  #   get edit_care_receiver_url(@care_receiver)
  #   assert_response :success
  # end
  #
  # test "should update care_receiver" do
  #   patch care_receiver_url(@care_receiver), params: { care_receiver: {  } }
  #   assert_redirected_to care_receiver_url(@care_receiver)
  # end
  #
  # test "should destroy care_receiver" do
  #   assert_difference('care_receiver.count', -1) do
  #     delete care_receiver_url(@care_receiver)
  #   end
  #
  #   assert_redirected_to care_receivers_url
  # end
end
