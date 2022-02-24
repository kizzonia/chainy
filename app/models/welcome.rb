class Welcome < ApplicationRecord
mount_uploader :logoimg, LogoimgUploader
mount_uploader :bgimg, BgimgUploader

end
