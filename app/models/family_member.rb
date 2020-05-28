class FamilyMember < ApplicationRecord
  belongs_to :user
  include PgSearch::Model
  pg_search_scope :search_by_city_and_kinship,
  against: [ :city, :kinship ]
end
