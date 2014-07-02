class ProjectItem < ActiveRecord::Base

belongs_to :project
has_many :donations

def donated
	total = 0
	donations.all.each do |donation| 
  total += donation.quantity
	end
	total
end

def remaining
   quantity - total_donated
end

def total_cost
	remaining * cost
end

end
