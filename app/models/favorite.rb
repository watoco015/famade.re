class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :art

  validates :user_id, uniqueness: { scope: :art_id }
end
