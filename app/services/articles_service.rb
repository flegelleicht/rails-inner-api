class ArticlesService
  def self.headlines
    Article.all.pluck(:headline)
  end
end
