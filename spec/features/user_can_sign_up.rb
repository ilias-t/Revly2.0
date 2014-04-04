require 'spec_helper'
require 'capybara/rspec'

describe "user can sign up", js: true do
  before(:all) do
    # Capybara.javascript_driver = :webkit
    User.delete_all
  end

  it "can sign up" do 
    visit "/users/sign_up"
    within("#new_user") do
      fill_in "user_email", with: "i@t.com"
      fill_in "user_username", with: "itsangaris"
      fill_in "user_password", with: "password"
      fill_in "user_password_confirmation", with: "password"
    end
    click_button("Sign up")
    expect(page).to have_content "itsangaris"
  end
end