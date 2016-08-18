class ProHeal < ActiveRecord::Base
  validates_format_of :phone, :with =>  /\A0[0-9]{9}\Z/, :on => :create
  mount_uploader :avatar, AvatarUploader
end
