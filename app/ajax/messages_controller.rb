class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def show
    @view_state = {
      messages: MessagesApi.get('/messages', {user: {id: 42}}),
    }
    render :template => 'messages/show', :layout => false
  end
end
