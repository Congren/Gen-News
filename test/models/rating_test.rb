require 'test_helper'

class RatingTest < ActiveSupport::TestCase
	should belong_to(:article)
	should validate_presence_of :reliability_score
	

  # test "the truth" do
  #   assert true
  # end
end
