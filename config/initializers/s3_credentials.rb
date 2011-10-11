# Load AWS::S3 configuration values
#
S3_CREDENTIALS = \
  YAML.load_file(File.join(Rails.root, 'config/s3_credentials.yml'))[Rails.env]

# Set the AWS::S3 configuration
#
AWS::S3::Base.establish_connection! S3_CREDENTIALS['connection']