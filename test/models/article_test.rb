require 'test_helper'

class ArticleTest < ActiveSupport::TestCase
	should belong_to(:savedArticle)
	should have_one(:article)
  # test "the truth" do
  #   assert true
  # end
end
