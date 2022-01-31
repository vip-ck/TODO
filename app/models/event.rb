# frozen_string_literal: true

class Event < ApplicationRecord
  belongs_to :user
  has_many :items, dependent: :destroy
  validates :name, presence: true
  validates :name, length: { maximum: 20, minimum: 3 }
  after_save :count_events
  after_destroy :recount_events

  private

  def count_events
    user.increment!(done? ? :events_done_count : :events_not_done_count)
  end

  def recount_events
    user.decrement!(done? ? :events_done_count : :events_not_done_count)
  end
end
