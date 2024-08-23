class Story < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_one_attached :video
  has_one_attached :audio
  has_many_attached :articleassets

  scope :published, -> {where(publish: true)}

  audited

  extend FriendlyId
  friendly_id :name, use: :slugged
end
