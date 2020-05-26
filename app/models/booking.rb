class Booking < ApplicationRecord
  belongs_to :family_member
  belongs_to :user
end
