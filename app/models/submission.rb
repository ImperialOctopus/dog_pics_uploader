class Submission < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  has_one_attached :image

  validates :name, presence: false, length: { maximum: 255 }
  validates :image, presence: true
  #validates :breed, presence: true
end
