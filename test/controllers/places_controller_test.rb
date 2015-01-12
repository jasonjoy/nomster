require 'test_helper'

class PlacesControllerTest < ActionController::TestCase
   test "show_action" do
        place = FactoryGirl.create(:place)
        get :show, :id => place.id
        assert_response :success
   end
end
