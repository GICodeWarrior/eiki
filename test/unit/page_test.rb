require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "param string is title" do
    assert_equal pages(:one).title, pages(:one).to_param
  end
end
