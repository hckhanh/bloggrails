class ArticleImageUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process convert: 'jpg'
  process tags: %w[blog,article,rails]

  cloudinary_transformation folder: 'bloggrails'

  # Add a white list of extensions which are allowed to be uploaded.
  def extension_whitelist
    %w[jpg jpeg gif png]
  end

  # For list of articles format
  version :thumbnail do
    cloudinary_transformation crop: 'thumb', width: 'auto', height: 197, dpr: 'auto', responsive_placeholder: 'blank', secure: true
  end

  # For list of article detail
  version :article_header do
    cloudinary_transformation width: 'auto', dpr: 'auto', responsive_placeholder: 'blank', secure: true
  end
end
