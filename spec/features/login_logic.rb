require 'spec_helper'
require 'capybara/rspec'

User.delete_all

describe "Login logic", js: true do
  let(:new_user) { FactoryGirl.build(:user) }
  let(:existing_user) { FactoryGirl.create(:user) }

  before(:each) do
    visit root_path
  end

  it "allows users to sign up" do 
    signup(new_user)
    expect(page).to have_content new_user.username
  end

  it "allows users to sign in" do 
    signin(existing_user)
    expect(page).to have_content existing_user.username
  end
  
  it "allows users to sign out" do
    signout(existing_user)
    expect(page).to have_content "Sign in"
  end

#User Actions
  def signup(user)
    click_link "Sign up"
    within("#new_user") do
      fill_in "user_email", with: user.email
      fill_in "user_username", with: user.username
      fill_in "user_password", with: user.password
      fill_in "user_password_confirmation", with: user.password
    end
    click_button "Sign up"
  end

  def signin(user)
    click_link "Sign in"
      within("#new_user") do
        fill_in "user_email", with: user.email
        fill_in "user_password", with: user.password
      end
      save_and_open_page
    click_button "Sign in"
  end

  def signout(user)
    signin(user)
    click_link "Sign out"
  end

end