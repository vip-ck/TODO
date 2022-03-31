# frozen_string_literal: true

Item.destroy_all
Event.destroy_all
User.destroy_all
Role.destroy_all

default_role = Role.create!(name: 'Пользователь', code: :default)
admin_role = Role.create!(name: 'Администратор', code: :admin)

email = 'admin@example.com'
User.create! email: email,
             password: email,
             name: 'Администратор',
             role: admin_role

hash_users = 10.times.map do
  email = FFaker::Internet.safe_email
  {
    email: email,
    password: email,
    name: FFaker::Internet.user_name[2...16],
    role: default_role
  }
end

users = User.create! hash_users

hash_events = 20.times.map do
  {
    name: FFaker::HipsterIpsum.paragraph[3...20],
    content: FFaker::HipsterIpsum.paragraphs,
    finished_at: (Time.now + rand(1..31).day),
    user_id: users.sample.id
  }
end

events = Event.create! hash_events
hash_items = 200.times.map do
  {
    name: FFaker::HipsterIpsum.paragraph[3...20],
    event_id: events.sample.id
  }
end
Item.create! hash_items
