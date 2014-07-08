class ProjectItem < ActiveRecord::Base

belongs_to :project
has_many :donations


def donated
  donations.all.map(&:quantity).sum
end

def remaining
   quantity - donated
end

def remaining_cost
  ( quantity * cost ) - (donated * cost)
end

def total_cost
  quantity * cost
end

end
