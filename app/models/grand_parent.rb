class GrandParent < ApplicationRecord
   include PgSearch::Model
  pg_search_scope :search_by_first_name_city_hobby,
    against: [ :city, :hobby, :first_name ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
  has_many_attached :photos
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :first_name, :last_name, :price, :city, :description, presence: true
end
