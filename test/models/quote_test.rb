require 'test_helper'

class QuoteTest < ActiveSupport::TestCase
	test "unique_tag" do
		quote = Quote.create(:saying => "Cash rules everything around me, cream gets the money,dolla-dolla bill yall", :author => 'WuTang Clan')
		expected = 'WC#' + quote.id.to_s
		actual = quote.unique_tag
		assert_equal expected, actual
	end
end
