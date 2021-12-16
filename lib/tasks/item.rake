# frozen_string_literal: true

namespace :create do
  desc 'Создание подзадачи'
  task item: :environment do
    new_items = {
      name: FFaker::Lorem.word

    }

    Item.create! new_items
  end
end
