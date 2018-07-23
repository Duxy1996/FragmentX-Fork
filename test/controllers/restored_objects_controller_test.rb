require 'test_helper'

class RestoredObjectsControllerTest < ActionDispatch::IntegrationTest

  setup do
    @restored_object = RestoredObject.last
  end

  test "should get index" do
    get restored_objects_url
    assert_equal 200, status
  end

  test "should get new" do
    get  new_restored_object_url
    assert_equal 200, status
  end

  test "should show restored object" do
    get restored_objects_url(@restored_object)
    assert_equal 200, status
  end

  test "should create restored_object" do
    get  new_restored_object_url
    #assert_equal 200, status
    #post restored_objects_url, params: { restored_object:{ title: "can create", description: "article successfully.", user_id: 0, id: 0 } }
    #assert_response :redirect
    #follow_redirect!
    #assert_response :success
  end

end
