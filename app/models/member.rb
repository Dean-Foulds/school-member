class Member < ApplicationRecord
  validates :name, :email, presence: true, uniqueness: true
  has_many :partnerships, dependent: :destroy
  has_many :schools, through: :partnerships
end
