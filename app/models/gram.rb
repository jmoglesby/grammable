# frozen_string_literal: true

class Gram < ApplicationRecord
  validates :message, presence: true
end
