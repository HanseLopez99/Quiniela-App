class Phase < ApplicationRecord

  # Create validations for the phase model
  validates :id, presence: true, uniqueness: true, numericality: { only_integer: true }
  validates :description , presence: true, uniqueness: true
  
end
