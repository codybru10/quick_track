require 'rails_helper'

describe Client do
  it { should have_many :services }
  it { should have_many(:employees).through(:services) }
end
