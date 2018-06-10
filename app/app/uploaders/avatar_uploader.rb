class AvatarUploader < CarrierWave::Uploader::Base

  storage :file

  def store_dir
	"public/upload/"
  end


end

