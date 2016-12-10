# encoding: utf-8

class PictureUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick
  # include CarrierWave::ImageOptimizer
  
  # storage :fog
  
  # include CarrierWave::MiniTypes
  # process :set_content_type
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def cache_dir
    Rails.env.test? ? "#{Rails.root}/tmp/spec/uploads/tmp/uploads" : "#{Rails.root}/tmp/uploads"
  end
  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end

  # Process files as they are uploaded:
  # process :scale => [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end
  
  
    
  process :resize_to_fit => [750, 500]
  # process :optimize
  process :optimize

  version :thumb do
    process :resize_to_fill => [530, 345]
  end
  
  version :mini do
    process :resize_to_fill => [285, 190]
  end





  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end

  def optimize
    manipulate! do |img|
        return img unless img.mime_type.match /image\/jpeg/
        img.strip
        img.combine_options do |c|
            c.quality "80"
            c.depth "8"
            c.interlace "plane"
        end
        img
    end
  end

end
