require 'spec_helper'
require 'capybara/rspec'

describe "Tile feed", js: true do
  include SpecTestHelper
  let!(:existing_user) { FactoryGirl.create(:user) }
  let!(:existing_tile) { FactoryGirl.create(:tile) }

  it "displays tiles on the index page" do
    visit root_path
    signin(existing_user)
    binding.pry
    latest_tile_message = Tile.last.message # Most recently posted tile's message
    expect(page).to have_content latest_tile_message
  end

end