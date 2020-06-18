class Roaster < ApplicationRecord
  has_many :beans
  has_one :roaster_contact, dependent: :destroy
  accepts_nested_attributes_for :roaster_contact, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  
end
