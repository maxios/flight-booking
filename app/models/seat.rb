class Seat < ApplicationRecord
  CLASS_TYPES = [ :first_class, :business_class, :economy_class ].freeze
  POSITIONS = [ :aisle, :window ].freeze

  belongs_to :aeroplane

  validates :class_type, :inclusion => {:in => CLASS_TYPES}
  validates :position, :inclusion => {:in => POSITIONS}
end
