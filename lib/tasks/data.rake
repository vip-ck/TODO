# frozen_string_literal: true

namespace :create do
  desc 'Заполнение таблиц данными'
  task data: %i[user event item role environment] do
    puts 'Таблица заполненна'
  end
end
