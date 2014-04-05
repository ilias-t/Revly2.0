require 'spec_helper'

describe User do
  it { should validate_uniqueness_of :email}
  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :username }
  it { should validate_presence_of :email }
  it { should have_many :tiles}
  # it { should have_many (:tiles).through(:favorites) }
  # it { should have_many (:users).through(:following) }
  describe "#post" do
    let(:user) { FactoryGirl.create(:user) }
    let(:tile) { FactoryGirl.create(:tile) }

    it "creates a new tile and associates it with the user" do
      user.post(tile)
      expect(user.tiles).to include(tile)
    end

  end

end