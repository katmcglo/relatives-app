class FamilyMember < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :name, :age, :city, :description, :kinship, :image, presence: true
  include PgSearch::Model
  pg_search_scope :search_by_city,
  against: [ :city ],
  using: [ :tsearch ]
  pg_search_scope :search_by_kinship,
  against: [ :kinship ]
end
