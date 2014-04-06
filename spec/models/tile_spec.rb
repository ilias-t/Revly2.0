require 'spec_helper'

describe Tile do
  it { should validate_presence_of :message }
  it { should validate_presence_of :sound_id }
  # it { should validate_presence_of :color } //set random color if user doesn't choose one
  it { should belong_to :user }
end
