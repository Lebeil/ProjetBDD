class City < ActiveRecord::Base
    has_many :appointments
    has_many :doctors
    has_many :patients
end
