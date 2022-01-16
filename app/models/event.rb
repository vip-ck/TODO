# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  validates :name, presence: true
  validates :name, length: { maximum: 20, minimum: 3 }
end
