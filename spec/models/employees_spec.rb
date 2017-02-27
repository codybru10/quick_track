require 'rails_helper'

describe Employee do
  it { should have_many :services }
  it { should have_many(:clients).through(:services) }
end
