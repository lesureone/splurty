require 'test_helper'

class QuotesControllerTest < ActionController::TestCase
	test "quote show page" do
     quote = Quote.create(:saying => "Cash rules everything around me, cream gets the money,dolla-dolla bill yall", :author => 'WuTang Clan')
		get :show, :id => quote.id
		assert_response :success
   end
	
	test "quote show page, not found"  do
		get :show, :id => 'OMG'
		assert_response :not_found
	end
end
