class Review < ApplicationRecord
  belongs_to :car

  validates :comment, presence: true, uniqueness: true
  validates :rating, presence: true
end
