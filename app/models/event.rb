# frozen_string_literal: true

class Event < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 20, minimum: 3 }
  validates :content, length: { maximum: 300, minimum: 3 }
end
