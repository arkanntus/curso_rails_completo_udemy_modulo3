class Category < ActiveRecord::Base
  #Gem FriendlyId
  include FriendlyId
  friendly_id :description, use: :slugged

  #associations
  has_many :ads

  #validations
  validates_presence_of :description

  # Scopes
  scope :order_by_description, -> { order(:description) }

end
