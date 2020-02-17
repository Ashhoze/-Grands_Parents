class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :booked_grand_parents, through: :bookings, source: :grand_parent
  has_many :grand_parents
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
