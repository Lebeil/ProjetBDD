class Dogsitter < ActiveRecord::Base
  has_many :dogs, through: :strolls
  has_many :strolls
  belongs_to :city
end
