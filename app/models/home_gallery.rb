class HomeGallery < ActiveRecord::Base
  attr_accessible :name, :avatar

  has_attached_file :avatar

  # Paperclip image attachments
  has_attached_file :avatar, :styles => {
                        admin_prv:     '65x65#',
                        non_retina:    '250x190#',
                        retina:        '500x380#'
                    },
                    :url  => '/assets/homegallery/:id/:style/:hash.:extension',
                    :hash_secret => ':basename',
                    :path => ':rails_root/public/assets/homegallery/:id/:style/:hash.:extension'

  # add a delete_<asset_name> method:
  attr_accessor :delete_avatar
  before_validation { self.avatar.clear if self.delete_avatar == '1' }

  # Validate models
  validates :name, presence: true
end
