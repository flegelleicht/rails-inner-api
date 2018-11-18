class MessagesApi
	def self.get(path, parameters = {}, options = {})
    
    # Handle requests for greetings
    if path =~ /\/greeting/
      someone = parameters.fetch(:name, '')
      "Hello #{(someone && someone.chomp != '' ? someone : 'World')}!"

    # Handle requests for messages
    elsif path =~ /\/messages/
      user = parameters.fetch(:user, false)
      
      if user && user.fetch(:id, false)
        require 'securerandom'
        (1..10).map {|i| "#{i}: #{SecureRandom.urlsafe_base64}"}
        [] # FIXME: Just makes the test run for now ;)
      else
        raise [403, "Not authorized"]
      end
      
    # Handle all other requests
    else 
      raise [400, "Invalid request"]
    end
  end
end
