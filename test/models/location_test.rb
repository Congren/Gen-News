require 'test_helper'

class LocationTest < ActiveSupport::TestCase
	should belong_to(:user)
	should validate_presence_of(:user)
    should validate_presence_of(:zip)
    should validate_presence_of(:country)
    should validate_presence_of(:city)

	context "Creating a context for jobs" do
        setup do
        end

        teardown do
        end
		
		should "shows name as last, first name" do
			assert_equal "Pittsburgh 15289, US", @carnegie.fullLocation
		end   

  # test "the truth" do
  #   assert true
  # end
end
