require 'rails_helper'

RSpec.describe Room, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it 'has a name and a number' do
    room = FactoryBot.create(:room, name: "Blue room")
    expect(room.name).to eq "Blue room"
  end
end
