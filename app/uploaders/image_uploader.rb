# encoding: utf-8

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

class ImageUploader < CarrierWave::Uploader::Base

  # Include RMagick or ImageScience support:
  include CarrierWave::RMagick
  # include CarrierWave::MiniMagick
  # include CarrierWave::ImageScience

  # Choose what kind of storage to use for this uploader:
  # storage :file
  storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  version :thumb do
    process :resize_to_limit => [75,100]
    # process :scale => [200, 300]
  end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    #%w(jpg jpeg gif png)
    %w(jpg jpeg png pdf)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

end
