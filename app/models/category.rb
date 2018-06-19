class Category < ActiveRecord::Base
  #associations
  has_many :ads

  #validations
  validates_presence_of :description

  # Scopes
  scope :order_by_description, -> { order(:description) }
end
