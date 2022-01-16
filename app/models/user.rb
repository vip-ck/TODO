# frozen_string_literal: true

class User < ApplicationRecord
  belongs_to :role
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true
end
