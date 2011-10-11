class S3UploadsController < ApplicationController
  
  def create
    s3 = AWS::S3::S3Object.store(params[:file].original_filename, params[:file].tempfile, S3_CREDENTIALS['bucket'], :content_type => params[:file].content_type, :access => :public_read)
    render :json => {
      :url => public_s3_url(params[:file].original_filename)
    }
  end

  private

    def public_s3_url filename
      if S3_CREDENTIALS['prefix'].present?
        "#{S3_CREDENTIALS['prefix']}/#{filename}"
      else
        request.protocol +
        AWS::S3::Base.connections['AWS::S3::Base'].options[:server] +
        "/#{S3_CREDENTIALS['bucket']}/#{filename}"
      end
    end

end
