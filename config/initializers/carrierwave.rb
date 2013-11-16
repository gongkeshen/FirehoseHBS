CarrierWave.configure do |config|

  if Rails.env.production?

    config.fog_credentials = {
      :provider               => 'AWS',   # required
      :aws_access_key_id      => ENV['AWS_ACCESS_KEY'],   # required
      :aws_secret_access_key  => ENV['AWS_SECRET_KEY']    # required
    }
    config.fog_directory  = ENV['AWS_BUCKET']    # required

# upload to the Amazon S3 if it's production environment 
    config.storage = :fog
  else
# upload to the file system if it's developer environment
    config.storage = :file
  end

end