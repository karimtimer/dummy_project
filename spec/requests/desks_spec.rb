require 'rails_helper'

RSpec.describe "/desks", type: :request do

  describe "GET /index" do
    it "renders a successful response" do
      get desks_url
      expect(response).to be_successful
    end
  end
end
