class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :grand_parent
end
