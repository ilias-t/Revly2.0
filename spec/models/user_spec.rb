require 'spec_helper'

describe User do
  it { should validate_presence_of :email }
  it { should validate_uniqueness_of :email}
  it { should validate_presence_of :username }
  it { should validate_uniqueness_of :username }
  it { should validate_presence_of :encrypted_password }
  it { should have_many :tiles}
  it { should have_many (:tiles).through(:favorites) }
  it { should have_many (:users).through(:following) }
end