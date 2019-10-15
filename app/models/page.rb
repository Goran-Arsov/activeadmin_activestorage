class Page < ApplicationRecord
    belongs_to :user
    has_one_attached :cover_image
    has_many_attached :uploads
end
