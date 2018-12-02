class HeadlinesForOverview

  def self.get(params = {})
    result = OpenStruct.new
    result.headlines = ArticlesService.headlines
    result
  end
end
