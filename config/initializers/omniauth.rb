#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :instagram, '52c7b24172374238bad39988a69e07e8', '9a1272aa68f645a9802d37d3df907b9f'
#end
require 'Instagram' #check if this is needed

Instagram.configure do |config|
  config.client_id = "9ae057a3c6c54c8bbfc57f3e5296a842"
  config.client_secret = "c49b5a5671b64d7f94d2cb95bb969469"
end
CALLBACK_URL = "http://sunrise.dev/oauth/callback"


