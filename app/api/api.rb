class Api
  def self.get(path, parameters = {}, options = {})
    handler = @@routes_get[path]
    if handler
      handler.call(path, parameters, options)
    else
      raise "Path '#{path}' not found in #{@@routes_get.keys.join(', ')}"
    end
  end
  
  
  
  def self.register(klass)
    s = klass.new
    s.routes(self)
  end
  
  def self.on_get(route, &block)
    @@routes_get[route] = block
  end
  
  @@routes_get = {}
end
