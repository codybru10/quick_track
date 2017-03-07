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
      if !service.paid?
        time = time + service.time
      end
    end
    bill = (time.to_f/60.to_f) * rate
    return bill.to_i
  end

end
