class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :employee

  def cost
    rate = self.client.rate
    time = self.time.to_f
    bill = (time/60).to_f * rate
    return bill.to_i
  end

end
