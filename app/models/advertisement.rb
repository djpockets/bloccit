class Advertisement < ActiveRecord::Base

  def display
    "#{self.title}: #{self.price}"
  end
end
