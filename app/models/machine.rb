class Machine < ApplicationRecord
  validates_presence_of :location
  belongs_to :owner
  has_many :snacks_machine
  has_many :snacks, through: :snacks_machine

  def average_snack_price
    snacks.average("price")
  end

  def snack_count
    snacks.count(:name)
  end

end
