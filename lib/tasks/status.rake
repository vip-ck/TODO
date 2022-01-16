# frozen_string_literal: true

namespace :status do
  desc 'Статистика подзадач пользователей'
  task user: :environment do
    user = User.second
    puts "Пользователь: #{user.name}\nСписок подзадач:"
    puts '_______________________________________'
    user.events.map do |e|
      hash = e.items.map(&:id).zip(e.items.map(&:name)).to_h
      hash.each { |k, v| puts "id: #{k} | name: #{v}" }
    end
  end
end
