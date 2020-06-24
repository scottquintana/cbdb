class RoasterContact < ApplicationRecord
  belongs_to :roaster

  validates :city, presence: true
  validates :state, presence: true
  

end
