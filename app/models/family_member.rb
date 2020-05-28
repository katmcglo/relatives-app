class FamilyMember < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :name, :age, :description, :kinship, :image, presence: true
end
