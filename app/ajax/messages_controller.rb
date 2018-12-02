class MessagesController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  def show
    @view_state = {
      # Noch besser eigentlich:
      # messages: Api.get('/messages', {user: {id: 42}}),
      # ... und ein MessagesService registriert sich unter '/messages'
      # beim Start der Anwendung
      messages: MessagesApi.get('/messages', {user: {id: 42}}),
    }
    render :template => 'messages/show', :layout => false
  end
end
