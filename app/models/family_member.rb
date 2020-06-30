class FamilyMember < ApplicationRecord
  belongs_to :user
  has_one_attached :image, dependent: :delete
  has_many :bookings, dependent: :destroy

  validates :name, :age, :city, :kinship, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_city,
  against: [ :city ],
  using: [ :tsearch ]
  pg_search_scope :search_by_kinship,
  against: [ :kinship ]
  pg_search_scope :search_by_description, 
  against: [ :description ], 
  using: [ :tsearch]
  pg_search_scope :search_by_age,
  against: [ :age ]
end
