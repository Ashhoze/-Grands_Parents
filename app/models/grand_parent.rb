class GrandParent < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :first_name, :last_name, :price, :city, :description, presence: true
end
