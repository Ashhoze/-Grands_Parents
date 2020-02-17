class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grand_parent
  validates :date_start, :date_end, presence: true
end
