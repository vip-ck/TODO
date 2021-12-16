# frozen_string_literal: true

namespace :create do
  desc 'Создание пользователя'
  task user: :environment do
    new_users = {
      name: FFaker::Internet.user_name,
      email: FFaker::Internet.email
    }

    User.create! new_users
  end
end
