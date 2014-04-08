require 'spec_helper'
require 'capybara/rspec'

describe "Tile posting flow", js: true do
  include SpecTestHelper
  # let(:user) { FactoryGirl.create(:user) }
  let(:new_user) { FactoryGirl.build(:user) }
  let(:tile) { FactoryGirl.build(:tile) }

  it "allows a user to post a tile" do
    visit root_path
    signup(new_user)
    click_link "Post a Tile"
    within(".new-tile-message") do
      fill_in "tile_message", with: tile.message
    end
    click_button "Post"
    expect(page).to have_content tile.message
  end


  # def post_tile(user, tile)

  # end

end