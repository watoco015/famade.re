class Comment < ApplicationRecord
  belongs_to :art
  belongs_to :user
end
