class Specialty < ApplicationRecord
  has_many :knowledges
  has_many :doctors, through: :knowledges
end
