# frozen_string_literal: true

class Maker < ApplicationRecord
  validates :name, presence: true
end
