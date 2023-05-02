require 'rails_helper'

RSpec.describe Room, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it 'has a name and a number' do
    room = FactoryBot.create(:room, name: "Blue room")
    FactoryBot.create(:desk, room: room)
    FactoryBot.create(:desk, room: room)
    FactoryBot.create(:desk, room: room)
    FactoryBot.create(:desk, room: room)

    expect(room.name).to eq "Blue room"
    expect(room.reload.desks.count).to eq 4
  end
end
