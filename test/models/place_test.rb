require 'test_helper'

class PlaceTest < ActiveSupport::TestCase
   test "descriptive_text_field" do
     p = Place.create(:name=>"bogus_name", :address=>"123 Main St, New York, NY", :description=>"foo")
     actual = p.descriptive_text_field

     assert_equal "bogus_name - 123 Main St, New York, NY - foo", actual
   end
end
