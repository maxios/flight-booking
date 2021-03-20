class Ticket < ApplicationRecord
  belongs_to :flight
  belongs_to :user

  before_create :generate_pnr

  def generate_pnr
    self.pnr_number = self.class_type
  end
end
