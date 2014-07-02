class ProjectItem < ActiveRecord::Base

belongs_to :project
has_many :donations

def remaining
	total = 0
	donations.all.each do |donation| 
  total += donation.quantity
	end
	total
end

def total_cost
	self.amount_remaining * cost
end

end
