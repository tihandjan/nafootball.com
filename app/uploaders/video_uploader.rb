# encoding: utf-8

class VideoUploader < CarrierWave::Uploader::Base

    include CarrierWave::MiniMagick
    include VideoHelper
    
    def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    def cache_dir
        Rails.env.test? ? "#{Rails.root}/tmp/spec/uploads/tmp/uploads" : "#{Rails.root}/tmp/uploads"
    end
    
        
    process :resize_to_fit => [750, 500]
    process :image_set

    version :mini do
        process :resize_to_fill => [285, 190]
    end

    def extension_white_list
        %w(jpg jpeg gif png)
    end


    def image_set
        if model.category == "overview"
            manipulate! do |img|
                first_image = odd_even 
                second_image = MiniMagick::Image.open "public/images/teams/#{set_team_icon(model.team_first)}" 
                third_image = MiniMagick::Image.open "public/images/teams/#{set_team_icon(model.team_second)}" 
                second_image.resize "130x130"
                third_image.resize "130x130"
                result = first_image.composite(second_image) do |c|
                    c.compose "Over" # OverCompositeOp
                    c.geometry "+50+80" # copy second_image onto first_image from (20, 20)
                end
                result2 = result.composite(third_image) do |c|
                    c.compose "Over" # OverCompositeOp
                    c.geometry "+253+80" # copy second_image onto first_image from (20, 20)
                end
                result2
            end
        end
    end

    def odd_even 
        if (Video.last.id) % 2 == 0
            (MiniMagick::Image.open "video_even.jpg").resize "430x430"
        else
            (MiniMagick::Image.open "video_odd.jpg").resize "430x430"
        end
    end

end
