# frozen_string_literal: true

namespace :create do
  desc 'Создание события'
  task event: :environment do
    new_events = {
      name: FFaker::Lorem.word,
      content: FFaker::Lorem.paragraph

    }

    Event.create! new_events
  end
end
