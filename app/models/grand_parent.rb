class GrandParent < ApplicationRecord
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :first_name, :last_name, :price, :city, :description, presence: true
end
