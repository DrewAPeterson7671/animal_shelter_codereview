class Animal < ApplicationRecord
  scope :most_recent, -> { order(created_at: :desc).limit(10)}
  scope :cats, -> { where(species: "Cat").limit(50) }
  scope :dogs, -> { where(species: "Dog").limit(50) }
  scope :search, -> (search) { where('species ilike :search OR breed ilike :search OR name ilike :search', search: "%#{search}%")}
end
