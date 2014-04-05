require 'spec_helper'
require 'capybara/rspec'

User.delete_all
Tile.delete_all

describe "Tile post", js: true do
  include SpecHelperMethods
  let(:user) { FactoryGirl.create(:user) }
  let(:tile) { FactoryGirl.create(:tile) }

  it "allows a user to post a tile" do
    visit root_path
    signin(user)
    click_link "Post a Tile"
    within("#new_tile") do
      fill_in "tile_message", with: tile.message
    end
    click_button "Post"
  end

  # def post_tile(user, tile)

  # end

end