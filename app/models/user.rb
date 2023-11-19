class User < ApplicationRecord
  extend Devise::Models
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :nickname, presence: true

  has_many :arts
  has_many :comments
  has_many :bookmarks, dependent: :destroy
end
