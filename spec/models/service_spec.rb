require 'rails_helper'

describe Service do
  it { should belong_to :client }
  it { should belong_to :employee }
  it { should validate_presence_of :description }
  it { should validate_presence_of :date }
  it { should validate_presence_of :time }
  it { should validate_presence_of :client_id }
  it { should validate_presence_of :employee_id }
end
