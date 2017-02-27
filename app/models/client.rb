class Client < ActiveRecord::Base
  has_many :services
  has_many :employees, :through => :services
end
