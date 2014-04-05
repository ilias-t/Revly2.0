require 'spec_helper'
require 'capybara/rspec'

User.delete_all
Tile.delete_all

describe "Tile post", js: true do
  let(:user) { FactoryGirl.create(:user) }
  let(:tile) { FactoryGirl.create(:tile) }

  it "allows a user to post a tile" do
    visit root_path
    #user.post(tile)
  end

end