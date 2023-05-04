require "test_helper"

class BlogFlowTest < ActionDispatch::IntegrationTest
  test "can see the welcome page" do
    blue_room = FactoryBot.create(:room, name: "Blue room")
    red_room = FactoryBot.create(:room, name: "Red room")
    green_room = FactoryBot.create(:room, name: "Green room")
    FactoryBot.create(:desk, room: blue_room)
    FactoryBot.create(:desk, room: red_room)
    FactoryBot.create(:desk, room: green_room)
    FactoryBot.create(:desk, room: blue_room)
    FactoryBot.create(:desk, room: red_room)
    FactoryBot.create(:desk, room: green_room)

    get desks_url
    assert response
  end
end
