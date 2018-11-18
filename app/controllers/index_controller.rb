class IndexController < ApplicationController
  def initialize
    # Pull dependencies to *Api classes here, maybe?
    # Like Env.classForName('MessagesApi')
  end
  
  def index
    @viewState = {}
  end
end
