require 'spec_helper'

describe Tile do
  it { should validate_presence_of :message }
  it { should validate_presence_of :sound_id }
  it { should validate_presence_of :color }
  it { should belong_to :user }
end
