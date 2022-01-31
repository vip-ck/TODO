# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable
  before_validation :set_role, on: %i[create update]
  belongs_to :role
  has_many :events, dependent: :destroy
  validates :name, presence: true
  validates :name, length: { maximum: 16, minimum: 2 }
  validates :name, uniqueness: true
  validates :email, presence: true
  validates :email, uniqueness: true

  Role.find_each do |role|
    define_method "#{role.code}?" do
      role_id == role.id
    end
  end

  private

  def set_role
    self.role ||= Role.find_by(code: :default)
  end
end
