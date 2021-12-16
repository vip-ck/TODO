# frozen_string_literal: true

namespace :create do
  desc 'Создание роли'
  task role: :environment do
    new_roles = {
      name: FFaker::Lorem.word,
      code: FFaker::LoremRU.word
    }

    Role.create! new_roles
  end
end
