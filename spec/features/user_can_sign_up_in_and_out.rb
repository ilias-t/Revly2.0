require 'spec_helper'
require 'capybara/rspec'
require 'pry'

describe "Login system", js: true do
  include SpecTestHelper

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
    # binding.pry
    save_and_open_page
    expect(page).to have_content existing_user.username
  end
  
  it "allows users to sign out" do
    signout(existing_user)
    expect(page).to have_content "Sign in"
  end

end