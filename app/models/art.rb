class Art < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions

  validates :image, presence: true
  validates :title,          presence: true
  validates :content,        presence: true

  has_one_attached :image

  belongs_to :user
  has_many :comments
end
