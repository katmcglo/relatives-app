class FamilyMember < ApplicationRecord
  belongs_to :user
  include PgSearch::Model
  pg_search_scope :search_by_city,
  against: [ :city ],
  using: [ :tsearch ]
  pg_search_scope :search_by_kinship,
  against: [ :kinship ]
end
