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
   quantity - donated
end

def remaining_cost
  (quantity * cost) - (donated * cost)
end

def total_cost
	quantity * cost
end

end
