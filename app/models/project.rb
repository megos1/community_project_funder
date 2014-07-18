class Project < ActiveRecord::Base

  belongs_to :user
  has_many :project_items
  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://placehold.it/200x200"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  def total_cost
    project_items.map(&:total_cost).sum
  end

  def remaining_cost
    project_items.map(&:remaining_cost).sum
  end

  def donated
    project_items.map(&:donated).sum
  end

  def percent_raised
    if remaining_cost  < 1
      0
    else
    (remaining_cost / total_cost) * 100
  end
end

end

