# This auto-requires all services 
# so that they get a chance to register their routes with the inner api
Dir["#{Rails.root}/app/services/*.rb"].each do |file| 
  require file
end
