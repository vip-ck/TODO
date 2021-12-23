Item.destroy_all
Event.destroy_all
User.destroy_all

hash_users = 10.times.map do
  {
    name: FFaker::Internet.user_name[2...16],
    email: FFaker::Internet.safe_email
  }
end

users = User.create! hash_users

hash_events = 20.times.map do
  {
    name: FFaker::HipsterIpsum.paragraph[3...20],
    content: FFaker::HipsterIpsum.paragraphs,
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

