# frozen_string_literal: true

# rubocop:disable Style/FormatStringToken
namespace :events do
  desc 'берем статистику по пользователям'
  task stats: :environment do
    User.order(:name).each do |user|
      puts format('%20s: % 3d % 3d',
                  user.name,
                  user.events.count,
                  Item.where(event_id: user.events.ids).count)
    end
  end
end
# rubocop:enable Style/FormatStringToken
