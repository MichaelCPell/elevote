#omniauth_config_file = File.join(Rails.root,'config','omniauth.yml')
#raise "#{omniauth_config_file} is missing!" unless File.exists? omniauth_config_file
#omniauth_config = YAML.load_file(omniauth_config_file)[Rails.env].symbolize_keys
#
#
#  Rails.application.config.middleware.use OmniAuth::Builder do
#    provider :facebook, omniauth_config[:api_key], omniauth_config[:secret],
#             :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" } }
#  end
