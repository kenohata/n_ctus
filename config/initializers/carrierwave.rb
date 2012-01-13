CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    # :aws_access_key_id      => 'saiwaki',
    :aws_access_key_id      => 'saiwaki@planforgrowth.org',
    :aws_secret_access_key  => 'rikadai',
    :region                 => 'ap-northeast-1'
  }
  config.fog_directory  = 'connectus-note-image-beta'
  config.fog_host       = 'https://s3-ap-northeast-1.amazonaws.com/connectus-note-image-beta'
  config.fog_public     = true
  config.fog_attributes = {'Cache-Control' => 'max-age=315576000'}
end