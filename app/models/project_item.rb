class ProjectItem < ActiveRecord::Base
  belongs_to :project
  has_many :donations

  def amount_remaining
  	donations.all - quantity
end

end
