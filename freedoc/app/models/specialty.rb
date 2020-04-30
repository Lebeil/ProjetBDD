class Specialty < ActiveRecord::Base
  has_many :doctors, through: :doctor_specialty
  has_many :doctor_specialty
end
