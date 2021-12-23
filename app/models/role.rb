# frozen_string_literal: true

class Role < ApplicationRecord
  has_many :users
  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 3 }
  validates :name, uniqueness: true
  validates :code, presence: true
  validates :code, uniqueness: true
  validates :code, length: { maximum: 16, minimum: 3 }
end
