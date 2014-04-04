require 'spec_helper'
require 'capybara/rspec'

describe "user can sign up", js: true do
  # before(:all) do
  #   Capybara.javascript_driver = :webkit
  # end

  it "can sign up" do 
      visit root_path
      within("#signup-form") do
        fill_in "name", with: "Ilias"
        fill_in "email", with: "i@t.com"
        fill_in "username", with: "itsangaris"
        fill_in "password", with: "password"
        fill_in "password_confirmation", with: "password"
      end
      click_link "Sign up"
      ilias = User.find_by(name: "Ilias")
      expect(ilias).to_not be_nil
      expect(page).to have_content "Ilias"
  end
end