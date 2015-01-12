require 'test_helper'

class CommentTest < ActiveSupport::TestCase
   test "humanized_rating" do
     comment = FactoryGirl.build(:comment, :rating => "2_stars")
     my_rating = comment.humanized_rating

     assert_equal "two stars", my_rating
   end
end
