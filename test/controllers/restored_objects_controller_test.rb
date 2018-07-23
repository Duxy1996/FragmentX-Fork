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
    assert_equal 200, status
    @user       = User.new
    @priority   = Priority.new
    @protection = Protection.new
    @state      = State.new
    @units      = Units.new
    restoredobject = RestoredObject.new(title: 'TEST_TITLE',
    description: 'TEST_DESCRIPTION')
    restoredobject.user       = @user
    restoredobject.priority   = @priority
    restoredobject.protection = @protection
    restoredobject.state      = @state
    restoredobject.units      = @units
    assert restoredobject.valid?
    #post restored_objects_url, params:  restoredobject
    #assert_response :redirect
    #follow_redirect!
    #assert_response :success
  end

end
