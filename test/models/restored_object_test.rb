require 'test_helper'

class RestoredObjectTest < ActiveSupport::TestCase

  TEST_TITLE = 'TESTNAME'
  TEST_DESCRIPTION = 'TESTDESCIPTION'

  setup do
    @restored_object = RestoredObject.last
    @user       = User.new
    @priority   = Priority.new
    @protection = Protection.new
    @state      = State.new
    @units      = Units.new
  end

  test 'not valid restored object without title' do
    restoredobject = RestoredObject.new(description: TEST_DESCRIPTION,
                                        user_id: 0)
    refute  restoredobject.valid?
    assert_not_nil restoredobject.errors[:title]
  end

  test 'not valid restored object without description' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        user_id: 0)
    refute restoredobject.valid?
    assert_not_nil restoredobject.errors[:description]
  end

  test 'not valid restored object without user' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        description: TEST_DESCRIPTION)
    restoredobject.priority   = @priority
    restoredobject.protection = @protection
    restoredobject.state      = @state
    restoredobject.units      = @units
    refute restoredobject.valid?
    assert_not_nil restoredobject.errors[:user]
  end

  test 'not valid restored object without priority' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        description: TEST_DESCRIPTION)
    restoredobject.user       = @user
    restoredobject.protection = @protection
    restoredobject.state      = @state
    restoredobject.units      = @units
    refute restoredobject.valid?
    assert_not_nil restoredobject.errors[:user]
  end

  test 'not valid restored object without protection' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        description: TEST_DESCRIPTION)
    restoredobject.user       = @user
    restoredobject.priority   = @priority
    restoredobject.state      = @state
    restoredobject.units      = @units
    refute restoredobject.valid?
    assert_not_nil restoredobject.errors[:user]
  end

  test 'not valid restored object without state' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        description: TEST_DESCRIPTION)
    restoredobject.user       = @user
    restoredobject.priority   = @priority
    restoredobject.protection = @protection
    restoredobject.units      = @units
    refute restoredobject.valid?
    assert_not_nil restoredobject.errors[:user]
  end

  test 'not valid restored object without units' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        description: TEST_DESCRIPTION)
    restoredobject.user       = @user
    restoredobject.priority   = @priority
    restoredobject.protection = @protection
    restoredobject.state      = @state
    refute restoredobject.valid?
    assert_not_nil restoredobject.errors[:user]
  end

  test 'valid restored object' do
    restoredobject = RestoredObject.new(title: TEST_TITLE,
                                        description: TEST_DESCRIPTION)
    restoredobject.user       = @user
    restoredobject.priority   = @priority
    restoredobject.protection = @protection
    restoredobject.state      = @state
    restoredobject.units      = @units
    assert restoredobject.valid?
  end

end
