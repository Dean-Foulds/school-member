class Partnership < ApplicationRecord
  validates :member, :school, presence: true
  validates :school, uniqueness: { scope: :member }
  belongs_to :school
  belongs_to :member
end
