class Service < ActiveRecord::Base
  belongs_to :client
  belongs_to :employee

  validates :description, :date, :time, :client_id, :employee_id, :presence => true


  def cost
    rate = self.client.rate
    time = self.time.to_f
    bill = (time/60).to_f * rate
    return bill.to_i
  end

end
