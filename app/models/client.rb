class Client < ActiveRecord::Base
  has_many :services
  has_many :employees, :through => :services

  def total
    time = 0
    self.services.each do |service|
      time = time + service.time
    end
    return time
  end

  def bill
    rate = self.rate
    time = 0
    self.services.each do |service|
      time = time + service.time
    end
    return bill = time * rate
  end
end
