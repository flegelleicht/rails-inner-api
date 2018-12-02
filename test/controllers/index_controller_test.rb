require 'test_helper'

class IndexControllerTest < ActiveSupport::TestCase
  test "index should set up headlines" do
    view_model = IndexController.new.index

    assert(view_model.headlines, 'No headlines included!')
    assert(view_model.headlines.count >= 4, 'Too few headlines!')
  end
end
