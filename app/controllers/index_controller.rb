class IndexController < ApplicationController
  # index
  # 
  # @return [IndexViewModel]
  def index
    response = Api::HeadlinesForOverview.get({user: 12})
    view_model = IndexViewModel.from_response(response)
  end

  class IndexViewModel
    attr_accessor :headlines
    def self.from_response(response)
      result = self.new
      result.headlines = response.headlines
      result
    end
  end
end
