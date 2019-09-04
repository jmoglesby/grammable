# frozen_string_literal: true

class Gram < ApplicationRecord
  validates :message, presence: true

  belongs_to :user

  mount_uploader :picture, PictureUploader
end
