class Animal < ApplicationRecord
  scope :most_recent, -> { order(created_at: :desc).limit(10)}
  scope :cats, -> { where(species: "cat") }
end
