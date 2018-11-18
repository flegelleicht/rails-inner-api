class IndexController < ApplicationController
  def initialize
    # Pull dependencies to *Api classes here, maybe?
    # Like Env.classForName('MessagesApi')
  end
  
  def index
    @view_state = {
      greeting: MessagesApi.get('/greeting', {name: 'Hans'}),
      messages: MessagesApi.get('/messages', {user: {id: 42}})
    }
  end
end
