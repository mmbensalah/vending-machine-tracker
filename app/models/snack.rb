class Snack < ApplicationRecord
  has_many :snacks_machine
  has_many :machines, through: :snacks_machine
end
