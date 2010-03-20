class Disk < ActiveRecord::Base
  has_many :tracks
  validates_presence_of :image, :name
  validates_uniqueness_of :image
  
end
