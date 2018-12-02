class MessagesService
  def routes(api)
    api.on_get('/messages') do |path, parameters, options|

      user = parameters.fetch(:user, false)
      if user && user.fetch(:id, false)
        require 'securerandom'
        (1..10).map {|i| "#{i}: #{SecureRandom.urlsafe_base64}"}
      else
        raise [403, "Not authorized"]
      end
      
    end    
  end
end

# FIXME: Prepare for better testing!
Api.register(MessagesService)
