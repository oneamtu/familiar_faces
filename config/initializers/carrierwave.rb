CarrierWave.configure do |config|
  # For testing, upload files to local `tmp` folder.
  if Rails.env.production? || ENV["S3"]
    config.storage = :fog

    config.fog_credentials = {
      # $ heroku config:add S3_KEY=your_s3_access_key S3_SECRET=your_s3_secret S3_REGION=eu-west-1 S3_ASSET_URL=http://assets.example.com/ S3_BUCKET_NAME=s3_bucket/folder

      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AWS_ACCESS_KEY_ID'],
      :aws_secret_access_key => ENV['AWS_SECRET_ACCESS_KEY'],
    }
  else
    config.storage = :file
    config.enable_processing = false
    config.root = "#{Rails.root}/tmp"
  end

  config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku

  config.fog_directory    = 'familiar-faces'
  config.fog_public = false
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}
end
