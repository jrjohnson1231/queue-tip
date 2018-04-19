require 'test_helper'

class PositionInQueuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @position_in_queue = position_in_queues(:one)
  end

  test "should get index" do
    get position_in_queues_url
    assert_response :success
  end

  test "should get new" do
    get new_position_in_queue_url
    assert_response :success
  end

  test "should create position_in_queue" do
    assert_difference('PositionInQueue.count') do
      post position_in_queues_url, params: { position_in_queue: {  } }
    end

    assert_redirected_to position_in_queue_url(PositionInQueue.last)
  end

  test "should show position_in_queue" do
    get position_in_queue_url(@position_in_queue)
    assert_response :success
  end

  test "should get edit" do
    get edit_position_in_queue_url(@position_in_queue)
    assert_response :success
  end

  test "should update position_in_queue" do
    patch position_in_queue_url(@position_in_queue), params: { position_in_queue: {  } }
    assert_redirected_to position_in_queue_url(@position_in_queue)
  end

  test "should destroy position_in_queue" do
    assert_difference('PositionInQueue.count', -1) do
      delete position_in_queue_url(@position_in_queue)
    end

    assert_redirected_to position_in_queues_url
  end
end
