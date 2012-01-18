CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => 'AKIAIPPTJ26PCBP4CPLA',
    :aws_secret_access_key  => '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',
    # :region                 => 'ap-northeast-1'
  }
  config.fog_directory  = 'connectus-uploads'
  config.fog_host       = 'https://s3-ap-northeast-1.amazonaws.com/connectus-note-image-beta'
  config.fog_public     = true
  # config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end