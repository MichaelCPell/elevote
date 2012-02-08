Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '205528859544975','6a0d3bedf7d1674f20b8678fcd629a87',
    :client_options => { :ssl => { :ca_file => "#{Rails.root}/config/ca-bundle.crt" } }


end
