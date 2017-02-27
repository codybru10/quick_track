require 'rails_helper'

describe Service do
  it { should belong_to :client }
  it { should belong_to :employee }
end
