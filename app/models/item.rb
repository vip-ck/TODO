# frozen_string_literal: true

class Item < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 20, minimum: 3 }
end
