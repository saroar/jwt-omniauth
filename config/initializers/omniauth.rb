Rails.application.config.middleware.use OmniAuth::Builder do

  provider :facebook, '1734114280204941', 'd078e35af0a0eb10cc6f3cbe9b751c74',
         scope: 'public_profile', info_fields: 'id, email, name,link'
end
