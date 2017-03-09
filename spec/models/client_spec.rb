require 'rails_helper'

describe Client do
  it { should have_many :services }
  it { should have_many(:employees).through(:services) }
  it { should validate_presence_of :name }
  it { should validate_presence_of :contact_name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :contact_email }
  it { should validate_presence_of :contact_number }
  it { should validate_presence_of :rate }
end
