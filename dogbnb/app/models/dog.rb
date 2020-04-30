class Dog < ActiveRecord::Base
  has_many :dogsitters, through: :strolls
  has_many :strolls
  belongs_to :city
end
