class School < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :partnerships, dependent: :destroy
  has_many :members, through: :partnerships
end

