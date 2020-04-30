class Stroll < ActiveRecord::Base
  has_many :dogs
  has_many :dogsitters
  belongs_to :city
end
