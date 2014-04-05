class Tile < ActiveRecord::Base
  belongs_to :user
  validates :message, presence: true
  validates :sound_id, presence: true
  validates :color, presence: true
   
end
