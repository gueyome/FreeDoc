class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
  has_many :knowledges
  has_many :specialties, through: :knowledges
  belongs_to :city
end
