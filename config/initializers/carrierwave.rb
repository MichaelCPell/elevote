CarrierWave.configure do |config|
  config.fog_credentials = {
      :provider               => 'AWS',       # required
      :aws_access_key_id      => 'AKIAIDRRRSZYRTU7CYQA',       # required
      :aws_secret_access_key  => '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',       # required
    #  :region                 => ''  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'durhamvotes'                     # required
 # config.fog_host       = 'https://assets.example.com'            # optional, defaults to nil
  #config.fog_public     = false                                   # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end