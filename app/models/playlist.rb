class Playlist < ActiveRecord::Base
  belongs_to :user
  has_many :songs
  has_many :taggings
  has_many :locations, through: :taggings

  validates :title, presence: true
end
